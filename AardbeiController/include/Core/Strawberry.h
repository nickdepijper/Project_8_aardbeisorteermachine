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

	glm::ivec2 berry_end_pos1;
	glm::ivec2 berry_end_pos2;
	glm::dvec2 berry_line; //ax + b

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

	void GetStrawberryEndpoints(cv::Mat& BinaryImage) {
		//int xend, yend;
		//double Biggestdist = 1;
		//for (int r = 1; r < BinaryImage.rows; r++) {
		//	for (int c = 1; c < BinaryImage.cols; c++) {
		//		if (BinaryImage.at<bool>(r, c) == 1) {
		//			double dist = sqrt(pow((c - x1), 2) + pow((r - y1), 2));
		//			if (dist > Biggestdist) {
		//				Biggestdist = dist;
		//				xend = c;
		//				yend = r;
		//			}
		//		}
		//	}
		//}

		double x1 = berry_center_pixel_pos[0];
		double y1 = berry_center_pixel_pos[1];

		double x2 = crown_center_pixel_pos[0];;
		double y2 = crown_center_pixel_pos[1];;

		double m = (y1 - y2) / (x1 - x2);
		double b = -(m * x1) + y1;

		// y = xm + b

		// eindpunt
		double ratio = 3 / 4;
		double X = x1 + ((x2 - x1) * ratio);
		double Y = X * m + b;

		bool pixval;
		int x_per;
		int y_per;

		// haakse lijnen
		// punt 1
		double M = -1 / m;
		double B = y1 - M * x1;

		berry_line = glm::dvec2(M, B);

		int direction = 1;
		for (int i = 0; i < 2; i++) {
			x_per = std::round(x1);
			y_per = std::round(y1);
			pixval = BinaryImage.at<bool>(y_per, x_per);
			while (pixval && y_per < BinaryImage.rows && x_per < BinaryImage.cols && y_per > 1 && x_per > 1) {
				y_per = round(x_per * M + B);
				x_per = round(x_per + direction);
				pixval = BinaryImage.at<bool>(y_per, x_per);
			}

			if (direction > 0) {
				berry_end_pos1 = glm::ivec2(x_per, y_per);
			}
			else {
				berry_end_pos2 = glm::ivec2(x_per, y_per);
			}
			direction *= -1;
		}

		// punt 2
		/*x_per = round(x1);
		y_per = round(y1);
		pixval = BinaryImage.at<bool>(y_per, x_per);
		while (pixval == 1 || (y_per > BinaryImage.rows) || (x_per > BinaryImage.cols) || (y_per < 1) || (x_per < 1)) {
			y_per = round(x_per * M + B);
			x_per = round(x_per - 1);
			pixval = BinaryImage.at<bool>(y_per, x_per);
		}*/
		
	}

	cv::Point GetStrawberryWidestPoint1() {
		return cv::Point(berry_end_pos1.x, berry_end_pos1.y);
	}

	cv::Point GetStrawberryWidestPoint2() {
		return cv::Point(berry_end_pos2.x, berry_end_pos2.y);
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

