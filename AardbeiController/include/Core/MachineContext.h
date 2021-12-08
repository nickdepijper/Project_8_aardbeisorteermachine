#pragma once
#include "Util/IDisposable.h"
#include "ur_rtde/rtde_io_interface.h"
#include "ur_rtde/rtde_receive_interface.h"
#include "ur_rtde/rtde_control_interface.h"
#include "Util/Logger.h"
#include <memory>
#include <string>
#include "VisionContext.h"

using namespace ur_rtde;
using namespace AardbeiController::Util;

namespace AardbeiController {
	class MachineContext : public AardbeiController::Util::IDisposable {
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
	
	private:
		bool InitControl();
		bool InitIO();
		bool InitReceive();
	
	};

}