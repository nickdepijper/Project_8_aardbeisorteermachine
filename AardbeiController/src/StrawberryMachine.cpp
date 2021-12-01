#include "StrawberryMachine.h"

AardbeiController::StrawberryMachine::StrawberryMachine(StrawberryMachineConfig _config)
{
	this->machine_info = std::make_shared<UR5Info>();

	this->config = _config;

	this->machine_context = std::make_shared<AardbeiController::Control::MachineContext>();
	machine_context->Init(config.cobot_ip);
	this->polling_thread = std::make_unique<AardbeiController::Control::UR5PollThread>(machine_context, this->machine_info);
	this->polling_thread->Start();
}

AardbeiController::StrawberryMachine::~StrawberryMachine()
{
	this->Dispose();
}

void AardbeiController::StrawberryMachine::Dispose()
{
	this->polling_thread->Stop();
	this->machine_context->Dispose();
}
