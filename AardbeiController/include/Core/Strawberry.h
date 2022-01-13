#pragma once
#include "Util/Object.h"
#include "Util/IComparable.h"
#include "glm/glm.hpp"
#include "opencv2/opencv.hpp"

struct Strawberry;
DEF_WEAK(Strawberry)
DEF_SHARED(Strawberry)
DEF_UNIQUE(Strawberry)

struct Strawberry : public Object {
	glm::dvec3 physical_position;
	glm::dvec2 center_position_in_frame;

	glm::dvec2 berry_center_pixel_pos;
	glm::dvec2 crown_center_pixel_pos;

	double estemated_width;
	double estemated_length;

	bool valid;

	Strawberry() {
		physical_position = glm::dvec3(0.0, 0.0, 0.0);
		center_position_in_frame = glm::dvec2(0.0, 0.0);

		berry_center_pixel_pos = glm::dvec2(0.0, 0.0);
		crown_center_pixel_pos = glm::dvec2(0.0, 0.0);

		estemated_length = 0.0;
		estemated_width = 0.0;
		valid = false;
	}

	~Strawberry() {

	}

	cv::Point GetStrawberryCenter() {
		return cv::Point(center_position_in_frame.x, center_position_in_frame.y);
	}

	cv::Point GetBerryCenter() {
		return cv::Point(berry_center_pixel_pos.x, berry_center_pixel_pos.y);
	}

	cv::Point GetCrownCenter() {
		return cv::Point(crown_center_pixel_pos.x, crown_center_pixel_pos.y);
	}

	std::string ToString() override {
		std::stringstream ss;
		ss << "Strawberry" << "\n";
		ss << "\tvalid: " << this->valid << "\n";
		ss << "\testemated_width: " << this->estemated_width << "\n";
		ss << "\testemated_length: " << this->estemated_length << "\n";
		ss << "\tphysical_position: " << this->physical_position.x << ", " << this->physical_position.y << ", " << this->physical_position.z << "\n";
		ss << "\tcenter_position_in_frame: " << this->center_position_in_frame.x << ", " << this->center_position_in_frame.y << "\n";
		ss << "\tberry_center_pixel_pos: " << this->berry_center_pixel_pos.x << ", " << this->berry_center_pixel_pos.y << "\n";
		ss << "\tcrown_center_pixel_pos: " << this->crown_center_pixel_pos.x << ", " << this->crown_center_pixel_pos.y << "\n";
		return ss.str();
	}
};

