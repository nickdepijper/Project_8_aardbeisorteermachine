#include "StrawberryMachine.h"
#include "opencv2/opencv.hpp"
AardbeiController::StrawberryMachine::StrawberryMachine(std::string config_path)
{
	this->machine_info = std::make_shared<UR5Info>();

	InitialState* st = new InitialState(
		std::weak_ptr<StrawberryMachineConfig>(), 
		std::weak_ptr<MachineContext>(), 
		std::weak_ptr<VisionContext>(),
		std::weak_ptr<UR5Info>(),
		StateEnum::HOMING,
		config_path);
	st->Init();
	st->Start();
	this->current_state = st;
	this->config = st->CollectResult();

	this->machine_context = std::make_shared<AardbeiController::MachineContext>();
	bool context_init_result = machine_context->Init(config->cobot_config.cobot_ip);
	if (!context_init_result) {
		Logger::LogError("[StrawberryMachine]: Could not initialize cobot machines context");
	}

	this->vision_context = std::make_shared<VisionContext>();
	bool vision_init_result = vision_context->Init(config->vision_config);
	if (!vision_init_result) {
		Logger::LogError("[StrawberryMachine]: Could not initialize vision context");
	}

	Logger::LogDebug(this->machine_context->ToString());
	Logger::LogDebug(this->vision_context->ToString());
	
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
	SystemState* old = nullptr;

	while (!stop_pressed) {
		StateEnum next_state = current_state->next_state;
		old = current_state;
		switch (next_state) {
		case StateEnum::HOMING:
		{
			this->current_state = new HomeState(
				config,
				machine_context,
				vision_context,
				machine_info,
				StateEnum::DETECT);
			HomeState* ptr = (HomeState*)this->current_state;
			ptr->Init();
			ptr->Start();
		}
		break;
		case StateEnum::DETECT:
		{
			this->current_state = new DetectState(config, machine_context, vision_context, machine_info);
			DetectState* ptr = (DetectState*)this->current_state;
			ptr->Init();
			ptr->Start();
		}
		break;
		case StateEnum::MOVE_TO_STBY:
		{
			this->current_state = new MoveToStrawBerryState(config, machine_context, vision_context, machine_info);
			MoveToStrawBerryState* ptr = (MoveToStrawBerryState*)this->current_state;
			ptr->target = ((DetectState*)old)->target_berry;
			ptr->Init();
			ptr->Start();
		}
		break;
		case StateEnum::GRAB_CLOSE:
		{
			this->current_state = new GrabCloseState(config, machine_context, vision_context, machine_info);
			GrabCloseState* ptr = (GrabCloseState*)this->current_state;
			ptr->Init();
			ptr->Start();
		}
		break;
		case StateEnum::TRAVELING_TO_TRAY:
		{
			this->current_state = new TravelToTrayState(config, machine_context, vision_context, machine_info);
			TravelToTrayState* ptr = (TravelToTrayState*)this->current_state;
			ptr->Init();
			ptr->Start();
		}
		break;
		case StateEnum::INDEXING_TRAY:
		{
			this->current_state = new IndexingTrayState(config, machine_context, vision_context, machine_info);
			IndexingTrayState* ptr = (IndexingTrayState*)this->current_state;
			ptr->Init();
			ptr->Start();
		}
		break;
		case StateEnum::GRAB_OPEN:
		{
			this->current_state = new GrabOpenState(config, machine_context, vision_context, machine_info);
			GrabOpenState* ptr = (GrabOpenState*)this->current_state;
			ptr->Init();
			ptr->Start();
		}
		break;
		}
		delete old;
		stop_pressed = this->machine_info->safety_status.IsGenEmergencyStop();
	}
}

void AardbeiController::StrawberryMachine::Dispose()
{
	this->polling_thread->Stop();
	this->machine_context->Dispose();
}
