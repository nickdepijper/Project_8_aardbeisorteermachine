#include "State/SystemState.h"

AardbeiController::State::SystemState::SystemState(std::weak_ptr<StrawberryMachineConfig> _cfg, std::weak_ptr<Control::MachineContext> _context, std::weak_ptr<UR5Info> _info, StateEnum _next_state)
{
	this->config = _cfg.lock();
	this->mcontext = _context.lock();
	this->minfo = _info.lock();
	this->next_state = _next_state;

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

void AardbeiController::State::InitialState::Init(std::string _cfg_path)
{
	this->config_path = _cfg_path;
}

void AardbeiController::State::InitialState::Start()
{
	this->output = StrawberryMachineConfig();
	StrawberryMachineConfig::Import(this->config_path, &this->output);
}

StrawberryMachineConfig AardbeiController::State::InitialState::CollectResult()
{
	return this->output;
}
