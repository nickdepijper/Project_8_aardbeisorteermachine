#include "StrawberryMachine.h"
#include "opencv2/opencv.hpp"
AardbeiController::StrawberryMachine::StrawberryMachine(std::string config_path)
{
	this->machine_info = std::make_shared<UR5Info>();

	InitialState* st = new InitialState(
		std::weak_ptr<StrawberryMachineConfig>(), 
		std::weak_ptr<MachineContext>(), 
		std::weak_ptr<UR5Info>(),
		StateEnum::HOMING,
		config_path);
	st->Init();
	st->Start();
	this->current_state = st;
	this->config = st->CollectResult();

	this->machine_context = std::make_shared<AardbeiController::MachineContext>();
	machine_context->Init(config->cobot_config.cobot_ip);

	this->vision_context = std::make_shared<VisionContext>();
	vision_context->Init(config->vision_config);
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
	bool logg = true;
	while (!stop_pressed) {
		std::shared_ptr<cv::VideoCapture> camera = vision_context->GetCamera().lock();
		cv::Mat frame;
		bool succes = camera->read(frame);
		cv::imshow("view", frame);
		char c = cv::waitKey(1);
		if (!logg) {

			StateEnum next_state = current_state->next_state;
			delete current_state;
			switch (next_state) {
			case StateEnum::HOMING:
			{
				this->current_state = new HomeState(
					config,
					machine_context,
					machine_info,
					StateEnum::DETECT);
				HomeState* ptr = (HomeState*)this->current_state;
				ptr->Init();
				ptr->Start();
			}
			break;
			case StateEnum::DETECT:
			{
				this->current_state = new DetectState(config, machine_context, machine_info);
				DetectState* ptr = (DetectState*)this->current_state;
				ptr->Init();
				ptr->Start();
			}
			break;
			case StateEnum::MOVE_TO_STBY:
			{
				this->current_state = new MoveToStrawBerryState(config, machine_context, machine_info);
				MoveToStrawBerryState* ptr = (MoveToStrawBerryState*)this->current_state;
				ptr->Init();
				ptr->Start();
			}
			break;
			case StateEnum::GRAB_CLOSE:
			{
				this->current_state = new GrabCloseState(config, machine_context, machine_info);
				GrabCloseState* ptr = (GrabCloseState*)this->current_state;
				ptr->Init();
				ptr->Start();
			}
			break;
			case StateEnum::TRAVELING_TO_TRAY:
			{
				this->current_state = new TravelToTrayState(config, machine_context, machine_info);
				TravelToTrayState* ptr = (TravelToTrayState*)this->current_state;
				ptr->Init();
				ptr->Start();
			}
			break;
			case StateEnum::INDEXING_TRAY:
			{
				this->current_state = new IndexingTrayState(config, machine_context, machine_info);
				IndexingTrayState* ptr = (IndexingTrayState*)this->current_state;
				ptr->Init();
				ptr->Start();
			}
			break;
			case StateEnum::GRAB_OPEN:
			{
				this->current_state = new GrabOpenState(config, machine_context, machine_info);
				GrabOpenState* ptr = (GrabOpenState*)this->current_state;
				ptr->Init();
				ptr->Start();
			}
			break;
			}
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
