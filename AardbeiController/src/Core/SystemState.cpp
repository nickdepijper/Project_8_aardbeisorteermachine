#include "Core/SystemState.h"
#include "opencv2/opencv.hpp"
#define _USE_MATH_DEFINES
#include <math.h>
#include <thread>
using namespace cv;

AardbeiController::SystemState::SystemState(std::weak_ptr<StrawberryMachineConfig> _cfg, 
	std::weak_ptr<MachineContext> _context,
	std::weak_ptr<VisionContext> _vcontext,
	std::weak_ptr<UR5Info> _info, 
	StateEnum _next_state)
{
	this->config = _cfg.lock();
	this->mcontext = _context.lock();
	this->vcontext = _vcontext.lock();
	this->minfo = _info.lock();
	this->next_state = _next_state;
	
	ready = false;
}

#pragma region InitialState
bool AardbeiController::InitialState::Init()
{
	this->output = StrawberryMachineConfig();
	this->ready = true;
	return ready;
}

void AardbeiController::InitialState::Start()
{
	StrawberryMachineConfig::Import(this->config_path, &this->output);
}

std::shared_ptr<StrawberryMachineConfig> AardbeiController::InitialState::CollectResult()
{
	return std::make_shared<StrawberryMachineConfig>(output);
}

std::string AardbeiController::InitialState::ToString()
{
	return std::string();
}


#pragma endregion

#pragma region HomeState
bool AardbeiController::HomeState::Init()
{
	control = this->mcontext->GetControlInterface().lock();
	if (!control) {
		this->ready = false;
		Logger::LogError("[HomeState] Could not grab valid MachineContext");
		return ready;
	}

	if (!control->isConnected()) {
		this->ready = false;
		Logger::LogError("[HomeState] Could not complete init: ");
		return ready;
	}

	if (!config) {
		this->ready = false;
		Logger::LogError("[HomeState] Could not grab valid Config");
	}
	this->ready = true;

	this->home_pos = glm::dvec3(config->conveyor_config.conveyor_home_pose[0], config->conveyor_config.conveyor_home_pose[1], config->conveyor_config.conveyor_home_pose[2]);
	this->home_orient = glm::dvec3(config->conveyor_config.conveyor_home_pose[3], config->conveyor_config.conveyor_home_pose[4], config->conveyor_config.conveyor_home_pose[5]);

	this->speed = 0.1;
	this->accel = 0.1;
	return ready;
}

void AardbeiController::HomeState::Start()
{
	std::vector<double> pose = { home_pos[0], home_pos[1], home_pos[2], home_orient[0],  home_orient[1],  home_orient[2] };
	this->control->moveL(pose, speed, accel, false);
}
#pragma endregion

#pragma region DetectState
bool AardbeiController::DetectState::Init()
{
	control = this->mcontext->GetControlInterface().lock();
	this->cconfig = config->conveyor_config;
	speed = 2.0;
	accel = 0.5;
	berry_min_radius = 100;
	crown_min_radius = 25;
	return control != nullptr;
}

void AardbeiController::DetectState::DetectStrawberry(Mat input) {
	std::vector<Mat> splitImage;
	Strawberry detected = Strawberry();
	split(input, splitImage);

	Mat Background, BackgroundInv;
	Mat Crown;
	Mat Berry;

	Scalar green_min(45, 125, 0);
	Scalar green_max(75, 255, 255);

	Scalar red_min(0, 0, 0);
	Scalar red_max(15, 255, 255);
	
	Mat kernel = cv::getStructuringElement(cv::MORPH_RECT, cv::Size(3, 3), cv::Point(-1, -1));
	//Thresh Crown channel and isolate Crown
	inRange(input, green_min, green_max, Crown);
	threshold(Crown, Crown, 0, 255, cv::ThresholdTypes::THRESH_OTSU);
	cv::morphologyEx(Crown, Crown, cv::MorphTypes::MORPH_OPEN, kernel, cv::Point(-1, -1));
	cv::morphologyEx(Crown, Crown, cv::MorphTypes::MORPH_CLOSE, kernel, cv::Point(-1, -1));
	//cv::imshow("crown", Crown);
	//detected.crown_frame = Crown;

	//Thresh Berry channel and isolate Berry
	inRange(input, red_min, red_max, Berry);
	threshold(Berry, Berry, 0, 255, cv::ThresholdTypes::THRESH_OTSU);
	cv::morphologyEx(Berry, Berry, cv::MorphTypes::MORPH_OPEN, kernel, cv::Point(-1, -1));
	cv::morphologyEx(Berry, Berry, cv::MorphTypes::MORPH_CLOSE, kernel, cv::Point(-1, -1));
	//cv::imshow("berry", Berry);
	//detected.berry_frame = Berry;
	
	std::vector<glm::vec3> found_crowns;
	FindBoundingCircle(Crown, &found_crowns, crown_min_radius);
	
	std::vector<glm::vec3> found_berries;
	FindBoundingCircle(Berry, &found_berries, berry_min_radius);
	
	if (found_crowns.size() != found_berries.size()) {
		Logger::LogWarning("Berry and crown contour mismatch: found berries does not equal found crowns");
		return;
	}
	
	//for (int i = 0; i < found_berries.size(); i++) {
	//	Strawberry detec;
	//	detec.valid = false;
	//	glm::vec3 crown_circle = found_crowns[i];
	//	glm::vec3 berry_circle = found_berries[i];
	//	detec.crown_center_pixel_pos = glm::vec2(crown_circle.x, crown_circle.y);
	//	detec.berry_center_pixel_pos = glm::vec2(berry_circle.x, berry_circle.y);
	//
	//	float distance = glm::distance(detec.crown_center_pixel_pos, detec.berry_center_pixel_pos);
	//	if (distance < 500.0f && distance != 0) {
	//		detec.valid = true;
	//	}
	//	this->detected.push_back(detec);
	//}

	glm::dvec3 frame_physical_center = glm::dvec3(config->vision_config.conveyor_start[0], config->vision_config.conveyor_start[1], config->vision_config.conveyor_start[2]);
	for (int i = 0; i < found_berries.size(); i++) {
		glm::vec2 berry_center_pixel = found_berries[i];
		glm::vec2 crown_center_pixel = glm::vec2(0.0f, 0.0f);
		double smallest_distance = 0;
		int index = 0;
		for (int k = 0; k < found_crowns.size(); k++) {
			crown_center_pixel = found_crowns[i];
			float distance = glm::distance(berry_center_pixel, crown_center_pixel);
			if (distance < smallest_distance) {
				index = k;
				smallest_distance = distance;
			}
		}
		crown_center_pixel = found_crowns[index];
		Strawberry detec;
		detec.valid = false;
		detec.crown_center_pixel_pos = glm::vec2(crown_center_pixel.x, crown_center_pixel.y);
		detec.berry_center_pixel_pos = glm::vec2(berry_center_pixel.x, berry_center_pixel.y);
		float distance = glm::distance(detec.crown_center_pixel_pos, detec.berry_center_pixel_pos);
		if (distance < 500.0f && distance != 0) {
			detec.valid = true;
		}

		detec.estemated_length = 0;
		detec.estemated_width = 0;
		detec.center_position_in_frame = detec.berry_center_pixel_pos;

		double meter_per_pixel_x = config->vision_config.frustum_size.x / double(config->vision_config.frame_width);
		double meter_per_pixel_y = config->vision_config.frustum_size.y / double(config->vision_config.frame_height);
		glm::dvec2 frame_center = glm::dvec2(double(config->vision_config.frame_width) / 2.0, double(config->vision_config.frame_height) / 2.0);
		glm::dvec2 physical_distance = (detec.center_position_in_frame - frame_center) * glm::dvec2(meter_per_pixel_x, meter_per_pixel_y);
		detec.physical_position = frame_physical_center + glm::dvec3(-physical_distance.y, -physical_distance.x, 0.0);
		this->detected.push_back(detec);
	}
}

void AardbeiController::DetectState::FindBoundingCircle(cv::Mat input, std::vector<glm::vec3>* arr, double min_radius)
{
	std::vector<std::vector<cv::Point> > contours;
	std::vector<cv::Vec4i> hierarchy;
	cv::findContours(input, contours, hierarchy, RETR_TREE, CHAIN_APPROX_SIMPLE);

	if (contours.size() == 0 || contours.size() > 50) {
		return;
	}

	std::vector<std::vector<Point>> contours_poly(contours.size());
	std::vector<Rect> boundRect(contours.size());
	std::vector<Point2f>center(contours.size());
	std::vector<float>radius(contours.size());

	for (size_t i = 0; i < contours.size(); i++)
	{
		approxPolyDP(Mat(contours[i]), contours_poly[i], 3, true);
		boundRect[i] = boundingRect(Mat(contours_poly[i]));
		minEnclosingCircle(contours_poly[i], center[i], radius[i]);
	}

	std::vector<glm::vec2> valid;

	for (int i = 0; i < contours.size(); i++) {
		if (radius[i] > min_radius) {
			valid.push_back(glm::vec2(i, radius[i]));
		}
	}

	for (int i = 0; i < valid.size(); i++) {
		cv::Point c_point = center[valid[i].x];
		arr->push_back(glm::vec3(c_point.x, c_point.y, valid[i].y));
	}
	
	return;
}

void AardbeiController::DetectState::Start()
{
	cv::Mat frame, result, hsv_frame;
	std::vector<cv::Mat> split_colors;
	for (int i = 0; i < 2; i++) {
		vcontext->GetCamera().lock()->read(frame);
	}
	if (frame.empty()) {
		this->next_state = StateEnum::HOMING;
		Logger::LogWarning("Could not detect strawberry: frame was empty");
		return;
	}
	cvtColor(frame, hsv_frame, ColorConversionCodes::COLOR_BGR2HSV);
	
	DetectStrawberry(hsv_frame);
	for (int i = 0; i < detected.size(); i++) {
		Strawberry detected_strawberry = detected[i];
		if (detected_strawberry.valid) {
			cv::line(hsv_frame, detected_strawberry.GetBerryCenter(), detected_strawberry.GetCrownCenter(), cv::Scalar(255, 0, 0), 2);
			float distance = glm::distance(detected_strawberry.berry_center_pixel_pos, detected_strawberry.crown_center_pixel_pos);
			cv::circle(hsv_frame, detected_strawberry.GetBerryCenter(), distance, cv::Scalar(0, 255, 255), 2);
		}
	}
	
	imshow("view", hsv_frame);
	
	cv::waitKey(1);
	if (detected.size() == 0) {
		this->next_state = StateEnum::DETECT;
	}
	return;
}
#pragma endregion

#pragma region MoveToStrawBerryState
bool AardbeiController::MoveToStrawBerryState::Init()
{
	control = this->mcontext->GetControlInterface().lock();
	for (int i = 0; i < detected_berries.size(); i++) {
		Logger::LogInfo(detected_berries[i].ToString());
		target = detected_berries[i];
		
	}
	return false;
}

void AardbeiController::MoveToStrawBerryState::Start()
{
	if (detected_berries.size() != 0) {
		std::vector<double> pose = { target.physical_position.x, target.physical_position.y, target.physical_position.z , 0, 3.1415, 0 };
		int wait_time = 5;
		double covered_distance = wait_time * config->conveyor_config.speed;
		pose[1] = pose[1] + covered_distance + 0.030;
		pose[2] = 0.3500;
		control->moveL(pose, 0.5, 0.5, true);
		Logger::LogInfo("Starting Wait");
		std::this_thread::sleep_for(std::chrono::seconds(wait_time));
		Logger::LogInfo("Stop the belt");
		pose[2] = 0.2900;
		control->moveL(pose, 1.0, 0.5, false);
		pose[2] = 0.3500;
		control->moveL(pose, 0.5, 0.5, false);
	}
	
}
#pragma endregion

#pragma region GrabCloseState
bool AardbeiController::GrabCloseState::Init()
{
	control = this->mcontext->GetControlInterface().lock();
	io_control = this->mcontext->GetIOInterface().lock();
	speed = 2.0;
	accel = 0.5;
	return control != nullptr;
}

void AardbeiController::GrabCloseState::Start()
{
	//io_control->setStandardDigitalOut(1, false);
	//io_control->setStandardDigitalOut(2, true);
}
#pragma endregion

#pragma region TravelToTrayState
bool AardbeiController::TravelToTrayState::Init()
{
	control = this->mcontext->GetControlInterface().lock();
	this->tconfig = config->tray_config;
	this->speed = 0.5;
	this->accel = 0.5;

	this->tray_pos = glm::dvec3(config->tray_config.tray_pose[0], config->tray_config.tray_pose[1], config->tray_config.tray_pose[2]);
	this->tray_orient = glm::dvec3(config->tray_config.tray_pose[3], config->tray_config.tray_pose[4], config->tray_config.tray_pose[5]);
	return true;
}

void AardbeiController::TravelToTrayState::Start()
{
	std::vector<double> pose = { tray_pos[0], tray_pos[1], tray_pos[2], tray_orient[0], tray_orient[1], tray_orient[2] };
	this->control->moveL(pose, speed, accel, false);
	//this->control->moveL(pose, speed, accel, false);
}
#pragma endregion

#pragma region IndexingTrayState

bool AardbeiController::IndexingTrayState::Init()
{
	control = this->mcontext->GetControlInterface().lock();
	this->tconfig = config->tray_config;
	this->speed = 2.0;
	this->accel = 0.5;

	this->index_z_pre_place = config->tray_config.tray_pose[2];
	this->index_pos = glm::dvec3(config->tray_config.tray_first_slot_pose[0], config->tray_config.tray_first_slot_pose[1], config->tray_config.tray_first_slot_pose[2]);
	this->index_orient = glm::dvec3(config->tray_config.tray_first_slot_pose[3], config->tray_config.tray_first_slot_pose[4], config->tray_config.tray_first_slot_pose[5]);

	return false;
}

void AardbeiController::IndexingTrayState::IncrementIdx()
{
	double index_x = config->tray_config.tray_current_index.x;
	double index_y = config->tray_config.tray_current_index.y;
	double max_x = config->tray_config.num_slots_width;
	double max_y = config->tray_config.num_slots_height;

	index_x += 1;
	if (index_x == max_x) {
		index_y += 1;
		index_x = 0;
	}
	if (index_y == max_y) {
		index_y = 0;
	}
	config->tray_config.tray_current_index = glm::dvec2(index_x, index_y);
}

void AardbeiController::IndexingTrayState::Start()
{
	index_pos = index_pos + (glm::dvec3(config->tray_config.tray_current_index.x, config->tray_config.tray_current_index.y, 0) * config->tray_config.tray_index_offsets);
	std::vector<double> pre_place_pose = { index_pos[0], index_pos[1], index_z_pre_place, index_orient[0], index_orient[1], index_orient[2] };
	std::vector<double> place_pose = { index_pos[0], index_pos[1], index_pos[2], index_orient[0], index_orient[1], index_orient[2] };

	this->control->moveL(pre_place_pose, speed, accel, false);
	this->control->moveL(place_pose, speed, accel, false);
	this->control->moveL(pre_place_pose, speed, accel, false);
	IncrementIdx();
}
#pragma endregion

#pragma region GrabOpenState
bool AardbeiController::GrabOpenState::Init()
{
	control = this->mcontext->GetControlInterface().lock();
	io_control = this->mcontext->GetIOInterface().lock();
	tconfig = config->tray_config;
	speed = 2.0;
	accel = 0.5;
	return false;
}

void AardbeiController::GrabOpenState::Start()
{
	//io_control->setStandardDigitalOut(1, true);
	//io_control->setStandardDigitalOut(2, false);
	//std::vector<double> pose = { tconfig.tray_pose[0], tconfig.tray_pose[1], tconfig.tray_pose[2], tconfig.tray_pose[3], tconfig.tray_pose[4], tconfig.tray_pose[5] };
	////this->control->moveL(pose, speed, accel, false);
	//this->control->moveJ(pose, speed, accel, false);
}
#pragma endregion
