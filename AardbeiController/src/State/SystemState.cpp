#include "State/SystemState.h"

AardbeiController::State::SystemState::SystemState(std::weak_ptr<StrawberryMachineConfig> _cfg, std::weak_ptr<Control::MachineContext> _context, std::weak_ptr<UR5Info> _info, StateEnum _next_state)
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

bool AardbeiController::State::InitialState::Init(std::string _cfg_path)
{
	this->config_path = _cfg_path;
	this->ready = true;
	return ready;
}

void AardbeiController::State::InitialState::Start()
{
	this->output = StrawberryMachineConfig();
	StrawberryMachineConfig::Import(this->config_path, &this->output);
}

std::shared_ptr<StrawberryMachineConfig> AardbeiController::State::InitialState::CollectResult()
{
	return std::make_shared<StrawberryMachineConfig>(output);
}

bool AardbeiController::State::HomeState::Init()
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

	this->home_pos = config->home_pos;
	this->home_orient = config->home_orient;

	this->speed = 0.1;
	this->accel = 0.25;
	return ready;
}

void AardbeiController::State::HomeState::Start()
{
	std::vector<double> pose = {home_pos[0], home_pos[1], home_pos[2], home_orient[0], home_orient[1], home_orient[2] };
	this->control->moveL(pose, speed, accel, false);
}
