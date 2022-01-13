#pragma once
#include <inttypes.h>
#include <vector>
#include <array>
#include <mutex>
#include "glm/glm.hpp"
#include "Util/Object.h"
#include <sstream>
#include <bitset>

struct SafetyStatus {
public:
	SafetyStatus() { SetStatus(0); }
	
	std::bitset<32> status;

	bool IsReduced()			{ return status.test(0); } // Is reduced mode
	bool IsProtectiveStop()		{ return status.test(1); } // Is protective stopped
	bool IsRecovery()			{ return status.test(2); } // Is recovery mode
	bool IsSafeGuardStop()		{ return status.test(3); } // Is safeguard stopped
	bool IsSysEmergencyStop()	{ return status.test(4); } // Is system emergency stopped
	bool IsRobEmergencyStop()	{ return status.test(5); } // Is robot emergency stopped
	bool IsGenEmergencyStop()	{ return status.test(6); } // Is emergency stopped
	bool IsViolationStop()		{ return status.test(7); } // Is violation
	bool IsFaultStop()			{ return status.test(8); } // Is fault
	bool IsSafetyStop()			{ return status.test(9); } // Is stopped due to safety

	void SetStatus(int32_t value) { this->status = std::bitset<32>((int64_t)value); }
	int32_t GetStatus() { return (int32_t)this->status.to_ulong(); }
};

struct RobotStatus {
public:
	RobotStatus() { SetStatus(0); }
	
	std::bitset<32> status;
	
	bool IsPowerOn()			{ return status.test(0); }
	bool IsProgramRunning()		{ return status.test(1); }
	bool IsTeachMode()			{ return status.test(2); }
	bool IsPowerBtnPressed()	{ return status.test(3); }

	void SetStatus(int32_t value) { this->status = std::bitset<32>((int64_t)value); }
	int32_t GetStatus() { return (int32_t)this->status.to_ulong(); }
};

enum class RobotMode {
	ROBOT_MODE_NO_CONTROLLER		= -1,
	ROBOT_MODE_DISCONNECTED			= 0,
	ROBOT_MODE_CONFIRM_SAFETY		= 1,
	ROBOT_MODE_BOOTING				= 2,
	ROBOT_MODE_POWER_OFF			= 3,
	ROBOT_MODE_POWER_ON				= 4,
	ROBOT_MODE_IDLE					= 5,
	ROBOT_MODE_BACKDRIVE			= 6,
	ROBOT_MODE_RUNNING				= 7,
	ROBOT_MODE_UPDATING_FIRMWARE	= 8
};

/// <summary>
/// Structure that contains data for a single UR-X Cobot Joint
/// </summary>
struct JointData : public Object {
	/// <summary>
	/// The current position of the joint in radians
	/// </summary>
	double position;

	/// <summary>
	/// The current velocity of the joint rotation
	/// </summary>
	double velocity;

	/// <summary>
	/// The current acceleration of the joint in m/2^2
	/// </summary>
	double acceleration;

	/// <summary>
	/// The current draw of the joint in Ampere
	/// </summary>
	double current;

	/// <summary>
	/// Initialises the JointData struct
	/// </summary>
	void Init();

	std::string ToString();
};

/// <summary>
/// Structure that contains data for the tool that is mounted on an UR-X cobot
/// </summary>
struct ToolData : public Object {
	/// <summary>
	/// The position of the tool in a cartesian model
	/// </summary>
	glm::dvec3 position;

	/// <summary>
	/// The roation of the tool in a cartesian model
	/// </summary>
	glm::dvec3 rotation;

	/// <summary>
	/// The speed vector of the tool in a cartesian model
	/// </summary>
	glm::dvec3 speed;

	/// <summary>
	/// Initialises the ToolData struct
	/// </summary>
	void Init();
	std::string ToString();

	std::string ConcatToolData();
};

/// <summary>
/// Structure that contains all data for a single UR-X Cobot Joint
/// </summary>
struct Joint : public Object {
	/// <summary>
	/// The joint temperature
	/// </summary>
	double temp;

	/// <summary>
	/// The voltage of the joint motor
	/// </summary>
	double voltage;

	/// <summary>
	/// The joint current mode
	/// </summary>
	int32_t mode;

	/// <summary>
	/// The Tool actual data
	/// </summary>
	JointData actual_data;

	/// <summary>
	/// The Tool target data
	/// </summary>
	JointData target_data;

	/// <summary>
	/// Initialises the Tool struct
	/// </summary>
	void Init();

	std::string ToString();
};

/// <summary>
/// Structure that contains all data for the tool that is mounted on an UR-X cobot
/// </summary>
struct Tool : public Object {
	ToolData actual_data;
	ToolData target_data;

	void Init();
	std::string ToString();
};

class MachineInfo : public Object {
public:
	double voltage;
	double current;
	RobotMode mode;
	RobotStatus status;
	SafetyStatus safety_status;
	std::array<Joint, 6> joints;
	Tool tool;
private:


public:
	std::mutex info_mutex;
	MachineInfo() {
		voltage = 0.0;
		current = 0.0;
		mode = RobotMode::ROBOT_MODE_NO_CONTROLLER;
		status = RobotStatus();
		safety_status = SafetyStatus();

		tool = {};
		tool.Init();
		for (size_t i = 0; i < 6; i++) {
			joints[i].Init();
		}
	}

	MachineInfo(const MachineInfo& m) {
		this->current = m.current;
		this->voltage = m.voltage;
		this->mode = m.mode;
		this->status = m.status;
		this->safety_status = m.safety_status;
		memcpy((void*)this->joints.data(), (void*)m.joints.data(), joints.size() * sizeof(Joint));
		memcpy((void*)&this->tool, (void*)&m.tool, sizeof(Tool));
		

	}

	MachineInfo& operator= (const MachineInfo& minfo) {
		memcpy((void*)this->joints.data(), (void*)minfo.joints.data(), joints.size() * sizeof(Joint));
		memcpy((void*)&this->tool, (void*)&minfo.tool, sizeof(Tool));
		this->current = minfo.current;
		this->voltage = minfo.voltage;
		this->mode = minfo.mode;
		this->status = minfo.status;
		this->safety_status = minfo.safety_status;
	}

	MachineInfo(MachineInfo&&) = delete;

	~MachineInfo() = default;

	std::string ToString();
};

typedef MachineInfo UR5Info;