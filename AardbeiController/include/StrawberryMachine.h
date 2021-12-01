#pragma once
#include <memory>
#include "Util/IDisposable.h"
#include "Control/CobotData.h"
#include "Control/MachineContext.h"
#include "Control/UR5PollThread.h"
#include "StrawberryMachineConfig.h"

namespace AardbeiController {
	class StrawberryMachine : public Util::IDisposable {
	private:
		std::shared_ptr<UR5Info> machine_info;
		std::shared_ptr<Control::MachineContext> machine_context;
		std::unique_ptr<AardbeiController::Control::UR5PollThread> polling_thread;
		StrawberryMachineConfig config;
	public:
		StrawberryMachine(StrawberryMachineConfig _config);

		~StrawberryMachine();


		inline std::weak_ptr<UR5Info> GetInfo() {
			return this->machine_info;
		}

		inline std::weak_ptr<Control::MachineContext> GetMachineContext() {
			return this->machine_context;
		}

		void Dispose();
	};
}
