#pragma once
#include "StrawberryMachineConfig.h"
#include "Control/MachineContext.h"
#include "Control/CobotData.h"
#include "StrawberryMachineConfig.h"
#include <memory>

namespace AardbeiController::State {
	enum class StateEnum {
		INITIALIZING,
		SHUTDOWN,
		EMERGENCY_STOP,
		HOMING,
		DETECT,
		MOVE_TO_STBY,
		GRAB_CLOSE,
		TRAVELING_TO_TRAY,
		INDEXING_TRAY,
		GRAB_OPEN
	};
	
	class SystemState {
	public:
		StateEnum state_id;
		StateEnum next_state;
	
	protected:
		std::shared_ptr<StrawberryMachineConfig> config;
		std::shared_ptr<Control::MachineContext> mcontext;
		std::shared_ptr<UR5Info> minfo;
		bool ready;
	
	public:
		SystemState(std::weak_ptr<StrawberryMachineConfig> _cfg, std::weak_ptr<Control::MachineContext> _context, std::weak_ptr<UR5Info> _info, StateEnum _next_state);
	};

	class InitialState : public SystemState {
	private:
		std::string config_path;
		StrawberryMachineConfig output;
	public:
		InitialState(std::weak_ptr<StrawberryMachineConfig> _cfg, std::weak_ptr<Control::MachineContext> _context, std::weak_ptr<UR5Info> _info, StateEnum _next_state)
			: SystemState(_cfg, _context, _info, _next_state) {

		}
		bool Init(std::string _cfg_path);

		void Start();

		std::shared_ptr<StrawberryMachineConfig> CollectResult();
	};

	class HomeState : public SystemState {
	private:
		std::shared_ptr<ur_rtde::RTDEControlInterface> control;
		glm::dvec3 home_pos;
		glm::dvec3 home_orient;
		double speed;
		double accel;
	public:
		HomeState(std::weak_ptr<StrawberryMachineConfig> _cfg, std::weak_ptr<Control::MachineContext> _context, std::weak_ptr<UR5Info> _info, StateEnum _next_state)
			: SystemState(_cfg, _context, _info, _next_state) {
			home_pos = glm::dvec3(0.0, 0.0, 0.0);
			speed = 0.1;
			accel = 0.05;
		}

		bool Init();
		void Start();
	};

}