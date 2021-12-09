#pragma once
#include <string>
#include <inttypes.h>
#include <array>
#include "glm/glm.hpp"

/// <summary>
/// Structure containing cobot config data
/// </summary>
struct CobotConfig {
	/// <summary>
	/// The cobot's ip adress
	/// </summary>
	std::string cobot_ip;

	/// <summary>
	/// The home position of the cobot
	/// </summary>
	std::array<double, 6> home_pose;
};

/// <summary>
/// Structure containing conveyor config data
/// </summary>
struct ConveyorConfig {
	/// <summary>
	/// The deault conveyor pose of the robot
	/// </summary>
	std::array<double, 6> conveyor_home_pose;
	
	/// <summary>
	/// The distance between the toolhead and the conveyor
	/// </summary>
	double conveyor_z_offset;

	/// <summary>
	/// The speed of the conveyor belt
	/// </summary>
	double speed;

	/// <summary>
	/// The width of the conveyor belt in mm
	/// </summary>
	double width;
};


/// <summary>
/// Structure containing tray config data
/// </summary>
struct TrayConfig {
	/// <summary>
	/// The default pose of the robot above the tray
	/// </summary>
	std::array<double, 6> tray_pose;

	/// <summary>
	/// The pose of the robot for the first slot in the tray
	/// </summary>
	std::array<double, 6> tray_first_slot_pose;

	/// <summary>
	/// Physical offsets of the tray index centerpoints
	/// </summary>
	glm::dvec3 tray_index_offsets;

	/// <summary>
	/// The current index in the tray
	/// </summary>
	glm::dvec2 tray_current_index;

	/// <summary>
	/// Number of tray slots across the width plane 
	/// </summary>
	int num_slots_width;

	/// <summary>
	/// Number of tray slots across the height plane
	/// </summary>
	int num_slots_height;
};


/// <summary>
/// Structure containing vision config data
/// </summary>
struct VisionConfig {
	/// <summary>
	/// The camera capture id
	/// </summary>
	int cap_id;

	/// <summary>
	/// The capture flags that the camera initialises with
	/// </summary>
	int flags;

	/// <summary>
	/// The frame capture width
	/// </summary>
	int frame_width;

	/// <summary>
	/// The frame capture height
	/// </summary>
	int frame_height;
};

struct StrawberryMachineConfig {
	CobotConfig cobot_config;
	ConveyorConfig conveyor_config;
	TrayConfig tray_config;
	VisionConfig vision_config;

	StrawberryMachineConfig();
	~StrawberryMachineConfig();


	static void Import(std::string config_path, StrawberryMachineConfig* result);
};