#pragma once
#include <memory>
#include "Util/IDisposable.h"
#include "Control/CobotData.h"
#include "Threading/RThread.h"

namespace AardbeiController {
	class StrawberryMachine : public Util::IDisposable {
	public:
		std::shared_ptr<UR5Info> machine_info;
		StrawberryMachine();

		~StrawberryMachine();

		void Dispose();
	};
}
