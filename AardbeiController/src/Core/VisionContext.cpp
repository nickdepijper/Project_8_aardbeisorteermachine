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

	bool VisionContext::Init(int camera_id, int flags)
	{
		try {
			camera = std::make_shared<cv::VideoCapture>(camera_id, flags);
			if (!camera->isOpened()) {
				AardbeiController::Util::Logger::LogError("[VisionContext] Camera opening failed");
				return false;
			}
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

