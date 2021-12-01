#pragma once
#include <string>
#include <inttypes.h>
#include "glm/glm.hpp"
struct StrawberryMachineConfig {
	glm::dvec3 home_pos;
	glm::dvec3 home_orient;

	glm::dvec3 tray_pos;
	glm::dvec3 tray_orient;

	glm::dvec3 tray_first_slot_pos;
	glm::dvec3 tray_first_slot_orient;

	glm::dvec3 tray_index_offsets;

	std::string cobot_ip;

	StrawberryMachineConfig();
	~StrawberryMachineConfig();


	static void Import(std::string config_path, StrawberryMachineConfig* result);
};