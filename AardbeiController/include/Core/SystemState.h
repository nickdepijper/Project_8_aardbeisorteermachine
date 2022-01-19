#pragma once
#include "StrawberryMachineConfig.h"
#include "Core/MachineContext.h"
#include "Control/CobotData.h"
#include "StrawberryMachineConfig.h"
#include "Strawberry.h"
#include <memory>
#include <Util/Object.h>

namespace AardbeiController {
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
	
	class SystemState : public Object {
	public:
		StateEnum state_id;
		StateEnum next_state;
	
	protected:
		std::shared_ptr<StrawberryMachineConfig> config;
		std::shared_ptr<MachineContext> mcontext;
		std::shared_ptr<VisionContext> vcontext;
		std::shared_ptr<UR5Info> minfo;
		bool ready;
		std::string error;
	public:
		SystemState(std::weak_ptr<StrawberryMachineConfig> _cfg, 
			std::weak_ptr<MachineContext> _context,
			std::weak_ptr<VisionContext> _vcontext,
			std::weak_ptr<UR5Info> _info, 
			StateEnum _next_state);
		virtual bool Init() = 0;
		virtual void Start() = 0;
	};

	class InitialState : public SystemState {
	private:
		std::string config_path;
		StrawberryMachineConfig output;
	public:
		InitialState(std::weak_ptr<StrawberryMachineConfig> _cfg, std::weak_ptr<MachineContext> _context, std::weak_ptr<VisionContext> _vcontext, std::weak_ptr<UR5Info> _info, StateEnum _next_state, std::string _cfg_path)
			: SystemState(_cfg, _context, _vcontext, _info, _next_state) {
			this->config_path = _cfg_path;
		}
		bool Init() override;

		void Start() override;

		std::string ToString() override;

		std::shared_ptr<StrawberryMachineConfig> CollectResult();
	};

	class HomeState : public SystemState {
	private:
		std::shared_ptr<ur_rtde::RTDEControlInterface> control;
		std::shared_ptr<ur_rtde::RTDEIOInterface> io_control;
		glm::dvec3 home_pos;
		glm::dvec3 home_orient;
		double speed;
		double accel;
	public:
		HomeState(std::weak_ptr<StrawberryMachineConfig> _cfg, std::weak_ptr<MachineContext> _context, std::weak_ptr<VisionContext> _vcontext, std::weak_ptr<UR5Info> _info, StateEnum _next_state)
			: SystemState(_cfg, _context, _vcontext, _info, _next_state) {
			home_pos = glm::dvec3(0.0, 0.0, 0.0);
			home_orient = glm::dvec3(0.0, 0.0, 0.0);
		}

		bool Init() override;
		void Start() override;
	};

	class DetectState : public SystemState {
	public:
		cv::Mat Crown;
		cv::Mat Berry;
	private:
		std::shared_ptr<ur_rtde::RTDEControlInterface> control;
		std::shared_ptr<ur_rtde::RTDEIOInterface> io_control;
		ConveyorConfig cconfig;
		double speed;
		double accel;
		double berry_min_radius;
		double crown_min_radius;

		
		std::vector<Strawberry> detected;

		void DetectStrawberry(cv::Mat input);
		glm::dvec3 CastPointToWorld(glm::dvec2);
		void FindBoundingCircle(cv::Mat input, std::vector<glm::vec3>* arr, double min_radius);
	public:
		Strawberry target_berry;
		
		DetectState(std::weak_ptr<StrawberryMachineConfig> _cfg, std::weak_ptr<MachineContext> _context, std::weak_ptr<VisionContext> _vcontext, std::weak_ptr<UR5Info> _info)
			: SystemState(_cfg, _context, _vcontext, _info, StateEnum::MOVE_TO_STBY) {			
		}
		bool Init() override;
		void Start() override;
	};

	class MoveToStrawBerryState : public SystemState {
	private:
		std::shared_ptr<ur_rtde::RTDEControlInterface> control;
		std::shared_ptr<ur_rtde::RTDEIOInterface> io_control;
	public:
		Strawberry target;

		MoveToStrawBerryState(std::weak_ptr<StrawberryMachineConfig> _cfg, std::weak_ptr<MachineContext> _context, std::weak_ptr<VisionContext> _vcontext, std::weak_ptr<UR5Info> _info)
			: SystemState(_cfg, _context, _vcontext, _info, StateEnum::GRAB_CLOSE) {
		}
		bool Init() override;
		void MoveToCorrectOrientation(std::vector<double>* current_pose);
		void Start() override;
	};

	class GrabCloseState : public SystemState {
	private:
		std::shared_ptr<ur_rtde::RTDEControlInterface> control;
		std::shared_ptr<ur_rtde::RTDEIOInterface> io_control;
		double speed;
		double accel;
	public:
		GrabCloseState(std::weak_ptr<StrawberryMachineConfig> _cfg, std::weak_ptr<MachineContext> _context, std::weak_ptr<VisionContext> _vcontext, std::weak_ptr<UR5Info> _info)
			: SystemState(_cfg, _context, _vcontext, _info, StateEnum::TRAVELING_TO_TRAY) {
		}
		bool Init() override;
		void Start() override;
	};

	class TravelToTrayState : public SystemState {
	private:
		std::shared_ptr<ur_rtde::RTDEControlInterface> control;
		TrayConfig tconfig;
		double speed;
		double accel;
		glm::dvec3 tray_pos;
		glm::dvec3 tray_orient;
	public:
		TravelToTrayState(std::weak_ptr<StrawberryMachineConfig> _cfg, std::weak_ptr<MachineContext> _context, std::weak_ptr<VisionContext> _vcontext, std::weak_ptr<UR5Info> _info)
			: SystemState(_cfg, _context, _vcontext, _info, StateEnum::INDEXING_TRAY) {
			speed = 0.1;
			accel = 0.05;
		}
		bool Init() override;
		void Start() override;
	};

	class IndexingTrayState : public SystemState {
	private:
		std::shared_ptr<ur_rtde::RTDEControlInterface> control;
		TrayConfig tconfig;
		double speed;
		double accel;
		double index_z_pre_place;
		glm::dvec3 index_pos;
		glm::dvec3 index_orient;

		void IncrementIdx();
	public:
		IndexingTrayState(std::weak_ptr<StrawberryMachineConfig> _cfg, std::weak_ptr<MachineContext> _context, std::weak_ptr<VisionContext> _vcontext, std::weak_ptr<UR5Info> _info)
			: SystemState(_cfg, _context, _vcontext, _info, StateEnum::GRAB_OPEN) {
		}
		bool Init() override;
		void Start() override;
	};

	class GrabOpenState : public SystemState {
	private:
		std::shared_ptr<ur_rtde::RTDEControlInterface> control;
		std::shared_ptr<ur_rtde::RTDEIOInterface> io_control;
		TrayConfig tconfig;
		double speed;
		double accel;
	public:
		GrabOpenState(std::weak_ptr<StrawberryMachineConfig> _cfg, std::weak_ptr<MachineContext> _context, std::weak_ptr<VisionContext> _vcontext, std::weak_ptr<UR5Info> _info)
			: SystemState(_cfg, _context, _vcontext, _info, StateEnum::HOMING) {
		}
		bool Init() override;
		void Start() override;
	};


}