#pragma once
#include "glm/glm.hpp"
#include "opencv2/opencv.hpp"

struct Strawberry {
	glm::dvec3 physical_position;
	glm::dvec2 center_position_in_frame;

	glm::dvec2 berry_center_pixel_pos;
	glm::dvec2 crown_center_pixel_pos;
	cv::Mat berry_frame;
	cv::Mat crown_frame;

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
		berry_frame = cv::Mat();
		crown_frame = cv::Mat();
		valid = false;
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

	
};