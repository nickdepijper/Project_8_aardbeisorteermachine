#include "Core/VisionContext.h"
#include "Util/Logger.h"
#include <exception>
#include <sstream>

namespace AardbeiController {
	VisionContext::VisionContext()
	{
		camera = std::shared_ptr<cv::VideoCapture>();
	}

	VisionContext::~VisionContext()
	{
		if (this->camera != nullptr) {
			if (this->camera->isOpened()) {
				this->camera->release();
			}
		}
	}

	std::weak_ptr<cv::VideoCapture> VisionContext::GetCamera()
	{
		return camera;
	}

	bool VisionContext::Init(VisionConfig config)
	{
		this->api = (cv::VideoCaptureAPIs)config.flags;
		this->cap_id = config.cap_id;
		cv::namedWindow("view", cv::WINDOW_FREERATIO);

		try {
			camera = std::make_shared<cv::VideoCapture>(this->cap_id, this->api);
			if (!camera->isOpened()) {
				AardbeiController::Util::Logger::LogError("[VisionContext] Camera opening failed");
				return false;
			}
			camera->set(cv::CAP_PROP_FRAME_WIDTH, config.frame_width);
			camera->set(cv::CAP_PROP_FRAME_HEIGHT, config.frame_height);
			return true;
		}
		catch (std::exception ex) {
			std::stringstream ss;
			ss << "[VisionContext] encountered an exception: " << ex.what();
			AardbeiController::Util::Logger::LogError(ss.str());
			return false;
		}
	}
}

