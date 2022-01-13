#include "Control/CobotData.h"
#include <sstream>

void JointData::Init()
{
	position = 0.0;
	velocity = 0.0;
	acceleration = 0.0;
	current = 0.0;
}

std::string JointData::ToString()
{
	std::stringstream ss;
	ss << "JointData\n";
	ss << "\tPosition:" << this->position << std::endl;
	ss << "\tVelocity:" << this->velocity << std::endl;
	ss << "\tAcceleration:" << this->acceleration << std::endl;
	ss << "\tCurrent:" << this->current << std::endl;
	return ss.str();
}

void ToolData::Init()
{
	position = glm::dvec3(0.0, 0.0, 0.0);
	rotation = glm::dvec3(0.0, 0.0, 0.0);
	speed = glm::dvec3(0.0, 0.0, 0.0);
}

std::string ToolData::ToString()
{
	std::stringstream ss;
	ss << "ToolData\n";
	ss << "\tPosition: [" << this->position.x << " " << this->position.y << " " << this->position.z << "]" << std::endl;
	ss << "\tRotation: [" << this->rotation.x << " " << this->rotation.y << " " << this->rotation.z << "]" << std::endl;
	ss << "\tSpeed: [" << this->speed.x << " " << this->speed.y << " " << this->speed.z << "]" << std::endl;
	return ss.str();
}

std::string ToolData::ConcatToolData()
{
	std::stringstream ss;
	ss << "\tPosition: [" << this->position.x << " " << this->position.y << " " << this->position.z << "] ";
	ss << "\tRotation: [" << this->rotation.x << " " << this->rotation.y << " " << this->rotation.z << "] ";
	ss << "\tSpeed: [" << this->speed.x << " " << this->speed.y << " " << this->speed.z << "] ";
	return ss.str();
}

void Joint::Init()
{
	temp = 0.0;
	voltage = 0.0;
	mode = 0;

	actual_data.Init();
	target_data.Init();
}

std::string Joint::ToString()
{
	std::stringstream ss;
	ss << "Joint\n";
	ss << "\tTemp:" << this->temp << std::endl;
	ss << "\tVoltage:" << this->voltage << std::endl;
	ss << "\tMode:" << this->mode << std::endl;
	ss << actual_data.ToString() << ": Actual" << std::endl;
	ss << target_data.ToString() << ": Target" << std::endl;
	return ss.str();
}

void Tool::Init()
{
	actual_data.Init();
	target_data.Init();
}

std::string Tool::ToString()
{
	std::stringstream ss;
	ss << "Tool\n";
	ss << actual_data.ToString() << ": Actual" << std::endl;
	ss << target_data.ToString() << ": Target" << std::endl;
	return ss.str();
}

std::string MachineInfo::ToString()
{
	std::stringstream ss;
	ss << "Cobot\n" << std::endl;
	ss << "\tvoltage: " << voltage << std::endl;
	ss << "\tcurrent: " << current << std::endl;
	ss << "\tmode: " << (int32_t)mode << std::endl;
	ss << "\tstatus: " << status.GetStatus() << std::endl;
	for (int i = 0; i < joints.size(); i++) {
		ss << "[Joint " << i << "]" << std::endl;
		ss << joints[i].ToString();
	}
	ss << "[Tool]" << std::endl;
	ss << tool.ToString();

	return ss.str();
}
