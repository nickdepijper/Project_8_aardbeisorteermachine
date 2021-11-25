#pragma once
#include "Util/RThread.h"
#include "MachineContext.h"
#include "CobotData.h"
#include <string>
#include <memory>
#include <chrono>
#include <time.h>
#include <thread>

namespace AardbeiController::Control {
	using Util::RThread;
	using Util::Delegate;

	class UR5PollThread : public RThread {
	private:
		MachineContext* received_context;
		std::shared_ptr<UR5Info> machineinfo_ptr;
		double min_execution_time;
	public:
		UR5PollThread(MachineContext* context, std::weak_ptr<UR5Info> machine_info_ptr, int freq = 120) {
			this->received_context = context;
			this->machineinfo_ptr = machine_info_ptr.lock();
			this->min_execution_time = (1.0 / (double)freq) * 1000.0;
			this->SetThreadFunc(Util::Delegate<RThreadFunc>(this, &UR5PollThread::PollFunc));
		}

		~UR5PollThread() {
			this->Stop();
		}


		void PollFunc() {
			clock_t start, end;
			double delta_mseconds = 0;
			while (!this->stoprequested) {
				if(this->pauserequested) {
					this->PauseFunc();
				}
				std::shared_ptr<RTDEReceiveInterface> receive_interface = received_context->GetReceiveInterface().lock();
				if (!receive_interface) {
					Logger::LogWarning("[UR5PollThread] Could not get lock on receive interface");
				}
				else {
					start = clock();
					//Do polling funct

					end = clock();
					delta_mseconds = ((double)(end - start) / CLOCKS_PER_SEC) * 1000;
					if (delta_mseconds < this->min_execution_time) {
						std::this_thread::sleep_for(std::chrono::milliseconds((int)(this->min_execution_time - delta_mseconds)));
					}
				}
				
				
			}
		}
	};
}