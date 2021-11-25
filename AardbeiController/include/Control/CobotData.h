#pragma once
#include <inttypes.h>
#include <vector>
#include <array>
#include <mutex>
#include "glm/glm.hpp"

/// <summary>
/// Structure that contains data for a single UR-X Cobot Joint
/// </summary>
struct JointData {
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
	/// The moment of the joint in Nm
	/// </summary>
	double moment;

	void Init() {
		position = 0.0;
		velocity = 0.0;
		acceleration = 0.0;
		current = 0.0;
		moment = 0.0;
	}
};

/// <summary>
/// Structure that contains data for the tool that is mounted on an UR-X cobot
/// </summary>
struct ToolData {
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

	void Init() {
		position = glm::dvec3(0.0, 0.0, 0.0);
		rotation = glm::dvec3(0.0, 0.0, 0.0);
		speed = glm::dvec3(0.0, 0.0, 0.0);
	}
};

/// <summary>
/// Structure that contains all data for a single UR-X Cobot Joint
/// </summary>
struct Joint {
	double temp;
	double voltage;
	double current;
	int32_t mode;

	JointData actual_data;
	JointData target_data;

	void Init() {
		temp = 0.0;
		voltage = 0.0;
		current = 0.0;
		mode = 0;

		actual_data.Init();
		target_data.Init();
	}
};

/// <summary>
/// Structure that contains all data for the tool that is mounted on an UR-X cobot
/// </summary>
struct Tool {
	ToolData actual_data;
	ToolData target_data;

	void Init() {
		actual_data.Init();
		target_data.Init();
	}
};

template<size_t num_joints>
class MachineInfo {
public:
	std::array<Joint, num_joints> joints;
	Tool tool;
private:


public:
	std::mutex info_mutex;
	MachineInfo() {
		tool = {};
		tool.Init();
		for (size_t i = 0; i < num_joints; i++) {
			joints[i].Init();
		}
	}

	MachineInfo(const MachineInfo& m) {
		memcpy((void*)this->joints.data(), (void*)m.joints.data(), joints.size() * sizeof(Joint));
		memcpy((void*)&this->tool, (void*)&m.tool, sizeof(Tool));
	}

	MachineInfo& operator= (const MachineInfo& minfo) {
		memcpy((void*)this->joints.data(), (void*)minfo.joints.data(), joints.size() * sizeof(Joint));
		memcpy((void*)&this->tool, (void*)&minfo.tool, sizeof(Tool));
	}

	MachineInfo(MachineInfo&&) = delete;

	~MachineInfo() = default;
};

typedef MachineInfo<6> UR5Info;