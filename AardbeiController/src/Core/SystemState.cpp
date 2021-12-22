#include "Core/SystemState.h"
#include "opencv2/opencv.hpp"
#define _USE_MATH_DEFINES
#include <math.h>
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

	this->ready = true;
	return ready;
}

void AardbeiController::InitialState::Start()
{
	this->output = StrawberryMachineConfig();
	StrawberryMachineConfig::Import(this->config_path, &this->output);
}

std::shared_ptr<StrawberryMachineConfig> AardbeiController::InitialState::CollectResult()
{
	return std::make_shared<StrawberryMachineConfig>(output);
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

	this->home_pos = glm::dvec3(config->cobot_config.home_pose[0], config->cobot_config.home_pose[1], config->cobot_config.home_pose[2]);
	this->home_orient = glm::dvec3(config->cobot_config.home_pose[3], config->cobot_config.home_pose[4], config->cobot_config.home_pose[5]);

	this->speed = 0.5;
	this->accel = 0.5;
	return ready;
}

void AardbeiController::HomeState::Start()
{
	std::vector<double> pose = { home_pos[0], home_pos[1], home_pos[2], home_orient[0], home_orient[1], home_orient[2] };
	//this->control->moveL(pose, speed, accel, false);
	//this->control->moveJ(pose, speed, accel, false);
}
#pragma endregion

#pragma region DetectState
bool AardbeiController::DetectState::Init()
{
	control = this->mcontext->GetControlInterface().lock();
	this->cconfig = config->conveyor_config;
	speed = 2.0;
	accel = 0.5;
	return control != nullptr;
}

void DoStuff(Mat input) {
	std::vector<Mat> splitImage;
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
	//cv::morphologyEx(Crown, Crown, cv::MorphTypes::MORPH_OPEN, kernel);
	//cv::morphologyEx(Crown, Crown, cv::MorphTypes::MORPH_CLOSE, kernel);

	//Thresh Berry channel and isolate Berry
	inRange(input, red_min, red_max, Berry);
	threshold(Berry, Berry, 0, 255, cv::ThresholdTypes::THRESH_OTSU);
	cv::morphologyEx(Berry, Berry, cv::MorphTypes::MORPH_OPEN, kernel, cv::Point(-1, -1));
	cv::morphologyEx(Berry, Berry, cv::MorphTypes::MORPH_CLOSE, kernel, cv::Point(-1, -1));
	//cv::morphologyEx(Berry, Berry, cv::MorphTypes::MORPH_CLOSE, kernel);
	
	Moments crown_moment = moments(Crown);
	Point crown_center = Point(crown_moment.m10 / crown_moment.m00, crown_moment.m01 / crown_moment.m00);


	Moments berry_moment = moments(Berry);
	Point berry_center = Point(berry_moment.m10 / berry_moment.m00, berry_moment.m01 / berry_moment.m00);

	float distance = sqrt(pow(crown_center.x - berry_center.x, 2)
						+ pow(crown_center.y - berry_center.y, 2));

	if (distance < 500.0f) {
		circle(input, berry_center, (int)distance, Scalar(255, 255, 255), 2);
	}
	line(input, crown_center, berry_center, Scalar(0, 0, 255), 2);
	
	//Rect rect = boundingRect(Berry);
	//cv::rectangle(input, rect, Scalar(255, 0, 0));
	
	imshow("Bei Gebied", Berry);
	imshow("Kroon Gebied", Crown);
	imshow("view", input);

}

void AardbeiController::DetectState::Start()
{
	// do strawberry detection;
	//std::vector<double> pose = { cconfig.conveyor_home_pose[0], cconfig.conveyor_home_pose[1], cconfig.conveyor_home_pose[2], cconfig.conveyor_home_pose[3], cconfig.conveyor_home_pose[4], cconfig.conveyor_home_pose[5] };
	////this->control->moveL(pose, speed, accel, false);
	//this->control->moveJ(pose, speed, accel, false);

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
	
	DoStuff(hsv_frame);
	cv::waitKey(1);
	return;


	cv::split(frame, split_colors);
	cv::threshold(split_colors[2], result, 0, 255, cv::THRESH_OTSU);
	cv::erode(result, result, cv::getStructuringElement(cv::MORPH_RECT, cv::Size(7, 7), cv::Point(3, 3)));

	std::vector<std::vector<cv::Point>> contours;
	cv::findContours(result, contours, cv::RETR_TREE, cv::CHAIN_APPROX_SIMPLE);

	std::vector<std::vector<cv::Point> > contours_poly(contours.size());
	std::vector<cv::Rect> boundRect(contours.size());
	std::vector<cv::Point2f>centers(contours.size());
	std::vector<float>radius(contours.size());
	for (size_t i = 0; i < contours.size(); i++)
	{
		approxPolyDP(contours[i], contours_poly[i], 3, true);
		boundRect[i] = cv::boundingRect(contours_poly[i]);
		cv::minEnclosingCircle(contours_poly[i], centers[i], radius[i]);
	}


	cv::imshow("view", result);
	cv::waitKey(1);

	if (centers.size() > 0) {
		glm::dvec3 strawberry_pos = glm::dvec3(centers[0].x, centers[0].y, 0.0);
		glm::dvec3 strawberry_fract = glm::dvec3(strawberry_pos.x / (double)config->vision_config.frame_width,
			strawberry_pos.y / (double)config->vision_config.frame_height, 0.0);
		glm::dvec3 strawberry_actual = config->vision_config.frustum_size * strawberry_fract;


		std::vector<double> pose2 = { config->vision_config.conveyor_start[0] - strawberry_actual.y , config->vision_config.conveyor_start[1] - strawberry_actual.x, config->vision_config.conveyor_start[2],
		config->vision_config.conveyor_start[3] ,config->vision_config.conveyor_start[4] ,config->vision_config.conveyor_start[5] };


		this->control->moveL(pose2, speed, accel, false);
	}
	else {
		Logger::LogWarning("Could not find strawberry: moving on to next state");
	}


}
#pragma endregion

#pragma region MoveToStrawBerryState
bool AardbeiController::MoveToStrawBerryState::Init()
{
	control = this->mcontext->GetControlInterface().lock();
	return false;
}

void AardbeiController::MoveToStrawBerryState::Start()
{
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
	this->speed = 2.0;
	this->accel = 0.5;
	return true;
}

void AardbeiController::TravelToTrayState::Start()
{
	//std::vector<double> pose = { tconfig.tray_pose[0], tconfig.tray_pose[1], tconfig.tray_pose[2], tconfig.tray_pose[3], tconfig.tray_pose[4], tconfig.tray_pose[5] };
	////this->control->moveL(pose, speed, accel, false);
	//this->control->moveJ(pose, speed, accel, false);
}
#pragma endregion

#pragma region IndexingTrayState
bool AardbeiController::IndexingTrayState::Init()
{
	control = this->mcontext->GetControlInterface().lock();
	this->tconfig = config->tray_config;
	this->speed = 2.0;
	this->accel = 0.5;
	return false;
}

void AardbeiController::IndexingTrayState::Start()
{
	//glm::dvec3 pose_pos = glm::dvec3(tconfig.tray_first_slot_pose[0], tconfig.tray_first_slot_pose[1], tconfig.tray_first_slot_pose[2]);
	//pose_pos = pose_pos + (glm::dvec3(config->tray_config.tray_current_index.x, 0.0, 0.0) * tconfig.tray_index_offsets);
	//pose_pos = pose_pos + (glm::dvec3(0.0, config->tray_config.tray_current_index.y, 0.0) * tconfig.tray_index_offsets);
	////std::vector<double> pose = { tconfig.tray_first_slot_pose[0], tconfig.tray_first_slot_pose[1], tconfig.tray_first_slot_pose[2], 
	////	tconfig.tray_first_slot_pose[3], tconfig.tray_first_slot_pose[4], tconfig.tray_first_slot_pose[5] };
	//std::vector<double> pose = { pose_pos.x, pose_pos.y, pose_pos.z, 
	//	tconfig.tray_first_slot_pose[3], tconfig.tray_first_slot_pose[4], tconfig.tray_first_slot_pose[5] };
	//
	//this->control->moveL(pose, speed, accel, false);
	//config->tray_config.tray_current_index.x += 1;
	//
	//if (config->tray_config.tray_current_index.x == tconfig.num_slots_width) {
	//	config->tray_config.tray_current_index.x = 0.0;
	//	config->tray_config.tray_current_index.y += 1.0;
	//}
	//
	//if (config->tray_config.tray_current_index.y == tconfig.num_slots_height) {
	//	config->tray_config.tray_current_index.x = 0.0;
	//	config->tray_config.tray_current_index.y = 0.0;
	//}
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
