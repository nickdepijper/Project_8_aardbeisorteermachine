#include "StrawberryMachine.h"

AardbeiController::StrawberryMachine::StrawberryMachine(std::string cobot_ip)
{
	this->machine_info = std::make_shared<UR5Info>();
	this->machine_context = std::make_shared<AardbeiController::Control::MachineContext>();
	machine_context->Init(cobot_ip);
	this->polling_thread = std::make_unique<AardbeiController::Control::UR5PollThread>();
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
