#pragma once
#include <memory>
#include "Util/IDisposable.h"
#include "StrawberryMachineConfig.h"
#include "Core/MachineContext.h"
#include "Core/SystemState.h"
#include "Control/UR5PollThread.h"
#include "Control/CobotData.h"
#include "Core/VisionContext.h"

namespace AardbeiController {
	class StrawberryMachine : public Util::IDisposable {
	private:
		std::shared_ptr<UR5Info> machine_info;
		std::shared_ptr<MachineContext> machine_context;
		std::shared_ptr<VisionContext> vision_context;
		std::unique_ptr<AardbeiController::Control::UR5PollThread> polling_thread;
		SystemState* current_state;
		std::shared_ptr<StrawberryMachineConfig> config;
	public:
		StrawberryMachine(std::string config_path);
		~StrawberryMachine();

		void Start();

		inline std::weak_ptr<UR5Info> GetInfo() {
			return this->machine_info;
		}

		inline std::weak_ptr<MachineContext> GetMachineContext() {
			return this->machine_context;
		}

		void Dispose();
	};
}
