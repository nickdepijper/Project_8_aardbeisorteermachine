#include "StrawberryMachine.h"

AardbeiController::StrawberryMachine::StrawberryMachine(std::string config_path)
{
	this->machine_info = std::make_shared<UR5Info>();

	this->current_state = new State::InitialState(
		std::weak_ptr<StrawberryMachineConfig>(), 
		std::weak_ptr<Control::MachineContext>(), 
		std::weak_ptr<UR5Info>(),
		State::StateEnum::HOMING);
	State::InitialState* st = (State::InitialState*)current_state;
	st->Init(config_path);
	st->Start();
	this->config = st->CollectResult();

	this->machine_context = std::make_shared<AardbeiController::Control::MachineContext>();
	machine_context->Init(config->cobot_ip);
	this->polling_thread = std::make_unique<AardbeiController::Control::UR5PollThread>(machine_context, this->machine_info);
	this->polling_thread->Start();
}

AardbeiController::StrawberryMachine::~StrawberryMachine()
{
	this->Dispose();
}

void AardbeiController::StrawberryMachine::Start()
{
	bool stop_pressed = false;
	while (!stop_pressed) {
		switch (current_state->next_state) {
			case State::StateEnum::HOMING:
				this->current_state = new State::HomeState(
					config,
					machine_context,
					machine_info,
					State::StateEnum::DETECT);
				State::HomeState* ptr = (State::HomeState*)this->current_state;
				ptr->Init();
				ptr->Start();
			break;
		}
		
		this->machine_info->info_mutex.lock();
		stop_pressed = this->machine_info->safety_status.IsGenEmergencyStop();
		this->machine_info->info_mutex.unlock();
	}
}

void AardbeiController::StrawberryMachine::Dispose()
{
	this->polling_thread->Stop();
	this->machine_context->Dispose();
}
