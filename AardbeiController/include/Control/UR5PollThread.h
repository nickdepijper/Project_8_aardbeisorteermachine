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
		std::shared_ptr<MachineContext> received_context;
		std::shared_ptr<UR5Info> machineinfo_ptr;
	public:
		UR5PollThread(std::weak_ptr<MachineContext> context, std::weak_ptr<UR5Info> machine_info_ptr, int freq = 120) : RThread(freq) 
		{
			this->received_context = context.lock();
			if (this->received_context == nullptr) {
				Logger::LogError("[UR5PollThread] Could not get a lock on the MachineContext");
			}
			this->machineinfo_ptr = machine_info_ptr.lock();
			if (this->received_context == nullptr) {
				Logger::LogError("[UR5PollThread] Could not get a lock on the MachineInfo");
			}

			this->SetThreadFunc(Util::Delegate<RThreadFunc>(this, &UR5PollThread::PollFunc));
		}

		UR5PollThread(int freq = 120) : RThread(freq) {
			this->SetThreadFunc(Util::Delegate<RThreadFunc>(this, &UR5PollThread::PollFunc));
		}

		~UR5PollThread() {
			this->Stop();
		}
	private:
		void AquireToolData(std::shared_ptr<ur_rtde::RTDEReceiveInterface> rcontext);
		void AquireJointData(std::shared_ptr<ur_rtde::RTDEReceiveInterface> rcontext);
		void AquireMachineData(std::shared_ptr<ur_rtde::RTDEReceiveInterface> rcontext);

		void PollFunc();
	};
}