#include "StrawberryMachineConfig.h"
#include "Util/FileManager.h"
#include "rapidjson/rapidjson.h"
#include "rapidjson/document.h"
#include <iostream>
#include <fstream>
#include <array>

using namespace rapidjson;
void ParseDoubleArr3(rapidjson::Document& doc, std::string key, glm::dvec3* val);
void ParseDoubleArr3(rapidjson::GenericObject<false, rapidjson::Value>& obj, std::string key, std::array<double, 3>& arr);
void ParseDoubleArr3(rapidjson::GenericObject<false, rapidjson::Value>& obj, std::string key, glm::dvec3* val);
void ParseDoubleArr6(rapidjson::Document& doc, std::string key, glm::dvec3* val1, glm::dvec3* val2);
void ParseDoubleArr6(rapidjson::GenericObject<false, rapidjson::Value>& obj, std::string key, std::array<double, 6>& arr);

StrawberryMachineConfig::StrawberryMachineConfig()
{
	//home_pos = glm::dvec3(0.0, 0.0, 0.0);
	//home_orient = glm::dvec3(0.0, 0.0, 0.0);
	//
	//tray_pos = glm::dvec3(0.0, 0.0, 0.0);
	//tray_orient = glm::dvec3(0.0, 0.0, 0.0);
	//
	//tray_first_slot_pos = glm::dvec3(0.0, 0.0, 0.0);
	//tray_first_slot_orient = glm::dvec3(0.0, 0.0, 0.0);
	//
	//tray_index_offsets = glm::dvec3(0.0, 0.0, 0.0);
	//cobot_ip = "127.0.0.1";
	tray_config.tray_current_index = glm::dvec2(0.0, 0.0);
}

StrawberryMachineConfig::~StrawberryMachineConfig()
{
}

void StrawberryMachineConfig::Import(std::string config_path, StrawberryMachineConfig* result)
{
	std::string file_contents = FileManager::ReadTextFile(config_path);
	if (file_contents == "") {
		throw new std::exception("Could find config or config was empty");
	}

	Document doc;
	doc.Parse(file_contents.c_str());
	if (!doc.IsObject()) {
		throw new std::exception("Json import failed");
	}

	auto cobotdata = doc["cobot"].GetObject();
	ParseDoubleArr6(cobotdata, "home_pose", result->cobot_config.home_pose);
	result->cobot_config.cobot_ip = std::string(cobotdata["cobot_ip"].GetString());

	auto conveyordata = doc["conveyor"].GetObject();
	ParseDoubleArr6(conveyordata, "home_pose", result->conveyor_config.conveyor_home_pose);
	result->conveyor_config.conveyor_z_offset = conveyordata["conveyor_z_offset"].GetDouble();
	result->conveyor_config.speed = conveyordata["speed"].GetDouble();
	result->conveyor_config.width = conveyordata["width"].GetDouble();

	auto traydata = doc["tray"].GetObject();
	ParseDoubleArr6(traydata, "home_pose", result->tray_config.tray_pose);
	ParseDoubleArr6(traydata, "slot_pose", result->tray_config.tray_first_slot_pose);
	ParseDoubleArr3(traydata, "tray_index_offset", &result->tray_config.tray_index_offsets);
	result->tray_config.num_slots_width = traydata["num_slots_width"].GetDouble();
	result->tray_config.num_slots_height = traydata["num_slots_height"].GetDouble();

	auto visiondata = doc["vision"].GetObject();
	result->vision_config.cap_id = visiondata["cap_id"].GetInt();
	result->vision_config.flags = visiondata["flags"].GetInt();
	result->vision_config.frame_width = visiondata["frame_width"].GetInt();
	result->vision_config.frame_height = visiondata["frame_height"].GetInt();

	return;
}

void ParseDoubleArr3(rapidjson::Document& doc, std::string key, glm::dvec3* val) {
	auto tfpose_arr = doc[key.c_str()].GetArray();
	val->x = tfpose_arr[0].GetDouble();
	val->y = tfpose_arr[1].GetDouble();
	val->z = tfpose_arr[2].GetDouble();
}

void ParseDoubleArr3(rapidjson::GenericObject<false, rapidjson::Value>& obj, std::string key, std::array<double, 3>& arr) {
	auto tfpose_arr = obj[key.c_str()].GetArray();
	arr[0] = tfpose_arr[0].GetDouble();
	arr[1] = tfpose_arr[1].GetDouble();
	arr[2] = tfpose_arr[2].GetDouble();
}

void ParseDoubleArr3(rapidjson::GenericObject<false, rapidjson::Value>& obj, std::string key, glm::dvec3* val) {
	auto tfpose_arr = obj[key.c_str()].GetArray();
	val->x = tfpose_arr[0].GetDouble();
	val->y = tfpose_arr[1].GetDouble();
	val->z = tfpose_arr[2].GetDouble();
}

void ParseDoubleArr6(rapidjson::Document& doc, std::string key, glm::dvec3* val1, glm::dvec3* val2) {
	auto tfpose_arr = doc[key.c_str()].GetArray();
	val1->x = tfpose_arr[0].GetDouble();
	val1->y = tfpose_arr[1].GetDouble();
	val1->z = tfpose_arr[2].GetDouble();
	val2->x = tfpose_arr[3].GetDouble();
	val2->y = tfpose_arr[4].GetDouble();
	val2->z = tfpose_arr[5].GetDouble();
}

void ParseDoubleArr6(rapidjson::GenericObject<false, rapidjson::Value>& obj, std::string key, std::array<double, 6>& arr) {
	auto tfpose_arr = obj[key.c_str()].GetArray();
	arr[0] = tfpose_arr[0].GetDouble();
	arr[1] = tfpose_arr[1].GetDouble();
	arr[2] = tfpose_arr[2].GetDouble();
	arr[3] = tfpose_arr[3].GetDouble();
	arr[4] = tfpose_arr[4].GetDouble();
	arr[5] = tfpose_arr[5].GetDouble();
}


