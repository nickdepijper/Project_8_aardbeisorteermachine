#pragma once
#include "Util/Object.h"
#include "opencv2/opencv.hpp"
#include <string>
#include "glm/glm.hpp"
#include "StrawberryMachineConfig.h"

namespace AardbeiController {
	class VisionContext;
	DEF_WEAK(VisionContext)
	DEF_SHARED(VisionContext)
	DEF_UNIQUE(VisionContext)

	class VisionContext: public Object {
	private:
		glm::ivec2 frame_size;
		int cap_id;
		cv::VideoCaptureAPIs api;
		std::shared_ptr<cv::VideoCapture> camera;
	public:
		VisionContext();
		~VisionContext();
		std::weak_ptr<cv::VideoCapture> GetCamera();
	
		bool Init(VisionConfig config);
		std::string ToString() override;
	};
}