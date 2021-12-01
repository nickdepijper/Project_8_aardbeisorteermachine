#include "StrawberryMachineConfig.h"
#include "Util/FileManager.h"
#include "rapidjson/rapidjson.h"
#include "rapidjson/document.h"
#include <iostream>
#include <fstream>

using namespace rapidjson;
void ParseDoubleArr3(rapidjson::Document& doc, std::string key, glm::dvec3* val);
void ParseDoubleArr6(rapidjson::Document& doc, std::string key, glm::dvec3* val1, glm::dvec3* val2);

StrawberryMachineConfig::StrawberryMachineConfig()
{
	home_pos = glm::dvec3(0.0, 0.0, 0.0);
	home_orient = glm::dvec3(0.0, 0.0, 0.0);

	tray_pos = glm::dvec3(0.0, 0.0, 0.0);
	tray_orient = glm::dvec3(0.0, 0.0, 0.0);

	tray_first_slot_pos = glm::dvec3(0.0, 0.0, 0.0);
	tray_first_slot_orient = glm::dvec3(0.0, 0.0, 0.0);

	tray_index_offsets = glm::dvec3(0.0, 0.0, 0.0);
	cobot_ip = "127.0.0.1";
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

	ParseDoubleArr6(doc, "home_pose", &result->home_pos, &result->home_orient);
	ParseDoubleArr6(doc, "tray_pose", &result->tray_pos, &result->tray_orient);
	ParseDoubleArr6(doc, "tray_first_slot_pose", &result->tray_first_slot_pos, &result->tray_first_slot_orient);
	ParseDoubleArr3(doc, "tray_index_offset", &result->tray_index_offsets);
	result->cobot_ip = std::string(doc["cobot_ip"].GetString());
	return;
}

void ParseDoubleArr3(rapidjson::Document& doc, std::string key, glm::dvec3* val) {
	auto tfpose_arr = doc[key.c_str()].GetArray();
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
