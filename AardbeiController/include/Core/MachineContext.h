#pragma once
#include "Util/IDisposable.h"
#include "ur_rtde/rtde_io_interface.h"
#include "ur_rtde/rtde_receive_interface.h"
#include "ur_rtde/rtde_control_interface.h"
#include "Util/Logger.h"
#include <memory>
#include <string>
#include "Util/Object.h"
#include "VisionContext.h"

using namespace ur_rtde;
using namespace AardbeiController::Util;

namespace AardbeiController {
	class MachineContext;
	DEF_WEAK(MachineContext)
	DEF_SHARED(MachineContext)
	DEF_UNIQUE(MachineContext)

	class MachineContext : public Util::IDisposable, Object {
	private:
		std::string robot_ip;
		std::shared_ptr<RTDEControlInterface> control_interface;
		std::shared_ptr<RTDEIOInterface> io_interface;
		std::shared_ptr<RTDEReceiveInterface> receive_interface;
		
	public:
		MachineContext();
		~MachineContext();
	
		bool Init(std::string network_path);
		bool IsValid();
	
		void Dispose();
	
		std::weak_ptr<RTDEControlInterface> GetControlInterface();
		std::weak_ptr<RTDEIOInterface> GetIOInterface();
		std::weak_ptr<RTDEReceiveInterface> GetReceiveInterface();
		std::string ToString() override;
	
	private:
		bool InitControl();
		bool InitIO();
		bool InitReceive();
	
	};

}