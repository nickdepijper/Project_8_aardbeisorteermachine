#include "Core/VisionContext.h"
#include "Util/Logger.h"
#include <exception>
#include <sstream>

namespace AardbeiController {
	VisionContext::VisionContext()
	{
		camera = std::shared_ptr<cv::VideoCapture>();
		cap_id = 0;
		api = cv::VideoCaptureAPIs::CAP_ANY;
		frame_size = glm::ivec2(0, 0);
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
			camera->setExceptionMode(true);
			if (!camera->isOpened()) {
				AardbeiController::Util::Logger::LogWarning("[VisionContext] Camera opening failed");
				return false;
			}
			camera->set(cv::CAP_PROP_FRAME_WIDTH, config.frame_width);
			camera->set(cv::CAP_PROP_FRAME_HEIGHT, config.frame_height);
			this->frame_size = glm::ivec2(config.frame_width, config.frame_height);
			return true;
		}
		catch (std::exception ex) {
			std::stringstream ss;
			ss << "[VisionContext] encountered an exception: " << ex.what();
			AardbeiController::Util::Logger::LogWarning(ss.str());
			return false;
		}
	}

	std::string VisionContext::ToString()
	{
		std::stringstream ss;
		ss << "VisionContext\n";
		ss << "\tstatus: ";
		if (this->camera != nullptr) {
			if (this->camera->isOpened()) {
				ss << "OPEN\n";
			}
			else {
				ss << "CLOSED\n";
			}
		}
		else {
			ss << "UNINITIALISED\n";
		}
		ss << "\tcapture id: " << this->cap_id << "\n";
		ss << "\tcapture api: " << this->api << "\n";
		ss << "\tframe size: " << this->frame_size.x << ", " << this->frame_size.y << "\n";
		return ss.str();
	}
}

