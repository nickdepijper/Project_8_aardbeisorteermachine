#include "Core/SystemState.h"
#include "opencv2/opencv.hpp"

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
	std::vector<double> pose = {home_pos[0], home_pos[1], home_pos[2], home_orient[0], home_orient[1], home_orient[2] };
	//this->control->moveL(pose, speed, accel, false);
	this->control->moveJ(pose, speed, accel, false);
}

bool AardbeiController::DetectState::Init()
{
	control = this->mcontext->GetControlInterface().lock();
	this->cconfig = config->conveyor_config;
	speed = 2.0;
	accel = 0.5;
	return control != nullptr;
}

void AardbeiController::DetectState::Start()
{
	// do strawberry detection;
	std::vector<double> pose = { cconfig.conveyor_home_pose[0], cconfig.conveyor_home_pose[1], cconfig.conveyor_home_pose[2], cconfig.conveyor_home_pose[3], cconfig.conveyor_home_pose[4], cconfig.conveyor_home_pose[5] };
	//this->control->moveL(pose, speed, accel, false);
	this->control->moveJ(pose, speed, accel, false);

	cv::Mat frame, result;
	std::vector<cv::Mat> split_colors;
	for (int i = 0; i < 2; i++) {
		vcontext->GetCamera().lock()->read(frame);
	}
	if (frame.empty()) {
		this->next_state = StateEnum::HOMING;
		Logger::LogWarning("Could not detect strawberry: frame was empty");
		return;
	}
	cv::split(frame, split_colors);


	cv::imshow("view", split_colors[2]);
	cv::waitKey(1);


	std::vector<double> pose2 = { config->vision_config.conveyor_start[0], config->vision_config.conveyor_start[1] , config->vision_config.conveyor_start[2],
	config->vision_config.conveyor_start[3] ,config->vision_config.conveyor_start[4] ,config->vision_config.conveyor_start[5] };
	this->control->moveL(pose2, speed, accel, false);
}

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
	io_control->setStandardDigitalOut(1, false);
	io_control->setStandardDigitalOut(2, true);
}

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
	io_control->setStandardDigitalOut(1, true);
	io_control->setStandardDigitalOut(2, false);
	//std::vector<double> pose = { tconfig.tray_pose[0], tconfig.tray_pose[1], tconfig.tray_pose[2], tconfig.tray_pose[3], tconfig.tray_pose[4], tconfig.tray_pose[5] };
	////this->control->moveL(pose, speed, accel, false);
	//this->control->moveJ(pose, speed, accel, false);
}

bool AardbeiController::MoveToStrawBerryState::Init()
{
	control = this->mcontext->GetControlInterface().lock();
	return false;
}

void AardbeiController::MoveToStrawBerryState::Start()
{
}
