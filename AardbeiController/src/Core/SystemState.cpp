#include "Core/SystemState.h"

AardbeiController::SystemState::SystemState(std::weak_ptr<StrawberryMachineConfig> _cfg, std::weak_ptr<MachineContext> _context, std::weak_ptr<UR5Info> _info, StateEnum _next_state)
{
	this->config = _cfg.lock();
	this->mcontext = _context.lock();
	this->minfo = _info.lock();
	this->next_state = _next_state;
	
	ready = false;
	//if (this->config == nullptr) {
	//	Logger::LogError("[System state init]: config was invalid");
	//}
	//
	//if (this->mcontext == nullptr) {
	//	Logger::LogError("[System state init]: context was invalid");
	//}
	//
	//if (this->minfo == nullptr) {
	//	Logger::LogError("[System state init]: info_block was invalid");
	//}

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

	this->speed = 0.1;
	this->accel = 0.25;
	return ready;
}

void AardbeiController::HomeState::Start()
{
	std::vector<double> pose = {home_pos[0], home_pos[1], home_pos[2], home_orient[0], home_orient[1], home_orient[2] };
	this->control->moveL(pose, speed, accel, false);
}

bool AardbeiController::DetectState::Init()
{
	control = this->mcontext->GetControlInterface().lock();
	this->cconfig = config->conveyor_config;
	return control != nullptr;
}

void AardbeiController::DetectState::Start()
{
	// do strawberry detection;
	std::vector<double> pose = { cconfig.conveyor_home_pose[0], cconfig.conveyor_home_pose[1], cconfig.conveyor_home_pose[2], cconfig.conveyor_home_pose[3], cconfig.conveyor_home_pose[4], cconfig.conveyor_home_pose[5] };
	this->control->moveL(pose, speed, accel, false);

}

bool AardbeiController::GrabCloseState::Init()
{
	control = this->mcontext->GetControlInterface().lock();
	return control != nullptr;
}

void AardbeiController::GrabCloseState::Start()
{
}

bool AardbeiController::TravelToTrayState::Init()
{
	control = this->mcontext->GetControlInterface().lock();
	this->tconfig = config->tray_config;
	this->speed = 0.1;
	this->accel = 0.25;
	return true;
}

void AardbeiController::TravelToTrayState::Start()
{
	std::vector<double> pose = { tconfig.tray_pose[0], tconfig.tray_pose[1], tconfig.tray_pose[2], tconfig.tray_pose[3], tconfig.tray_pose[4], tconfig.tray_pose[5] };
	this->control->moveL(pose, speed, accel, false);
}

bool AardbeiController::IndexingTrayState::Init()
{
	control = this->mcontext->GetControlInterface().lock();
	return false;
}

void AardbeiController::IndexingTrayState::Start()
{
}

bool AardbeiController::GrabOpenState::Init()
{
	control = this->mcontext->GetControlInterface().lock();
	return false;
}

void AardbeiController::GrabOpenState::Start()
{
}

bool AardbeiController::MoveToStrawBerryState::Init()
{
	control = this->mcontext->GetControlInterface().lock();
	return false;
}

void AardbeiController::MoveToStrawBerryState::Start()
{
}
