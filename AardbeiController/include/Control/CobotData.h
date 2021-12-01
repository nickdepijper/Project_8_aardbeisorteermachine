#pragma once
#include <inttypes.h>
#include <vector>
#include <array>
#include <mutex>
#include "glm/glm.hpp"
#include "Util/Object.h"
#include <sstream>

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
	/// The moment of the joint in Nm
	/// </summary>
	double moment;

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
	/// The current draw of the joint motor
	/// </summary>
	double current;

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
	std::array<Joint, 6> joints;
	Tool tool;
private:


public:
	std::mutex info_mutex;
	MachineInfo() {
		tool = {};
		tool.Init();
		for (size_t i = 0; i < 6; i++) {
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

	std::string ToString();
};

typedef MachineInfo UR5Info;