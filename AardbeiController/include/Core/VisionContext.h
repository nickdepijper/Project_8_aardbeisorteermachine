#pragma once
#include "opencv2/opencv.hpp"
#include <string>

namespace AardbeiController {
	class VisionContext {
	private:
		std::shared_ptr<cv::VideoCapture> camera;
	public:
		VisionContext();
		~VisionContext();
	
		bool Init(int camera_id, int flags = cv::CAP_ANY);
	};
}