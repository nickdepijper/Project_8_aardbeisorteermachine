#pragma once
#include "include/Util/Object.h"
#include "glm/glm.hpp"
#include "opencv2/opencv.hpp"
#include "geometry_msgs/Pose.h"


using namespace geometry_msgs;

struct Strawberry;
//DEF_WEAK(Strawberry)
//DEF_SHARED(Strawberry)
//DEF_UNIQUE(Strawberry)

struct Strawberry : public Object {
	glm::dvec2 center_position_in_frame;
	Pose physical_position;

	glm::dvec2 berry_center_pixel_pos;
	glm::dvec2 crown_center_pixel_pos;

	glm::ivec2 berry_widest_pos1;
	glm::ivec2 berry_widest_pos2;
	glm::dvec2 berry_center_line; //ax + b

	double estemated_width;
	double estemated_length;
	double angle_to_belt_dir;

	float distance_to_belt;
	float distance_to_camera;

	bool reachable;

	Strawberry() {
		physical_position.position.x = 0.0;
		physical_position.position.y = 0.0;
		physical_position.position.z = 0.0;

		physical_position.orientation.w = 0.0; 
		physical_position.orientation.x = 0.0; 
		physical_position.orientation.y = 0.0; 
		physical_position.orientation.z = 0.0; 
		

		center_position_in_frame = glm::dvec2(0.0, 0.0);

		berry_center_pixel_pos = glm::dvec2(0.0, 0.0);
		crown_center_pixel_pos = glm::dvec2(0.0, 0.0);
		
		distance_to_belt = 0;
		distance_to_camera = 0;

		estemated_length = 0.0;
		estemated_width = 0.0;
		reachable = false;
	}

	~Strawberry() {
	}
	void UpdateStrawberryPosition(std::vector<Strawberry>* arr)
	{
		for (int i = 0; i<arr->size(); i++){
			//depending on timestamp
			arr->at(i).physical_position.position.x += 10; //test value
			if (this->reachable){
				this->reachable = true;
			}
		}
	}
	//void CalcWidestPoints(cv::Mat& BinaryImage) {

	// 	double x1 = berry_center_pixel_pos[0];
	// 	double y1 = berry_center_pixel_pos[1];

	// 	double x2 = crown_center_pixel_pos[0];;
	// 	double y2 = crown_center_pixel_pos[1];;

	// 	//Calculate the strawberry center line based on crown center and berry center
	// 	// y = xm + b
	// 	double m = (y1 - y2) / (x1 - x2);
	// 	double b = -(m * x1) + y1;

	// 	//Calculate the perpendicular line on the strawberry center line
	// 	// y = xm + b
	// 	double M = -1 / m;
	// 	double B = y1 - M * x1;

	// 	berry_center_line = glm::dvec2(M, B);
		

	// 	//Calculate the end point of the strawberry based on the center line
	// 	double ratio = 3 / 4;
	// 	double X = x1 + ((x2 - x1) * ratio);
	// 	double Y = X * m + b;

	// 	bool pixval;
	// 	int x_per;
	// 	int y_per;


	// 	int direction = 1;


	// 	for (int i = 0; i < 2; i++) {
	// 		x_per = std::round(x1);
	// 		y_per = std::round(y1);
	// 		pixval = BinaryImage.at<bool>(y_per, x_per);
	// 		while (pixval && y_per < BinaryImage.rows && x_per < BinaryImage.cols && y_per > 1 && x_per > 1) {
	// 			y_per = round(x_per * M + B);
	// 			x_per = round(x_per + direction);
	// 			pixval = BinaryImage.at<bool>(y_per, x_per);
	// 		}

	// 		if (direction > 0) {
	// 			berry_widest_pos1 = glm::ivec2(x_per, y_per);
	// 		}
	// 		else {
	// 			berry_widest_pos2 = glm::ivec2(x_per, y_per);
	// 		}
	// 		direction *= -1;
	// 	}
	// }

	// cv::Point GetStrawberryWidestPoint1() {
	// 	return cv::Point(berry_widest_pos1.x, berry_widest_pos1.y);
	// }

	// cv::Point GetStrawberryWidestPoint2() {
	// 	return cv::Point(berry_widest_pos2.x, berry_widest_pos2.y);
	// }

	// cv::Point GetStrawberryCenter() {
	// 	return cv::Point(center_position_in_frame.x, center_position_in_frame.y);
	// }

	// cv::Point GetBerryCenter() {
	// 	return cv::Point(berry_center_pixel_pos.x, berry_center_pixel_pos.y);
	// }

	// cv::Point GetCrownCenter() {
	// 	return cv::Point(crown_center_pixel_pos.x, crown_center_pixel_pos.y);
	// }

	// std::string ToString() override {
	// 	std::stringstream ss;
	// 	ss << "Strawberry" << "\n";
	// 	ss << "\tvalid: " << this->valid << "\n";
	// 	ss << "\testemated_width: " << this->estemated_width << "\n";
	// 	ss << "\testemated_length: " << this->estemated_length << "\n";
	// 	ss << "\tphysical_position: " << this->physical_position.x << ", " << this->physical_position.y << ", " << this->physical_position.z << "\n";
	// 	ss << "\tcenter_position_in_frame: " << this->center_position_in_frame.x << ", " << this->center_position_in_frame.y << "\n";
	// 	ss << "\tberry_center_pixel_pos: " << this->berry_center_pixel_pos.x << ", " << this->berry_center_pixel_pos.y << "\n";
	// 	ss << "\tcrown_center_pixel_pos: " << this->crown_center_pixel_pos.x << ", " << this->crown_center_pixel_pos.y << "\n";
	// 	return ss.str();
	// }
};

