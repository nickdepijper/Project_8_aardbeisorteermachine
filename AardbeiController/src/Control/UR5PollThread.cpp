#include "Control/UR5PollThread.h"
#include "ur_rtde/rtde_receive_interface.h"
#include <vector>
#include <sstream>
void AardbeiController::Control::UR5PollThread::PollFunc()
{
	std::shared_ptr<ur_rtde::RTDEReceiveInterface> rcontext = received_context->GetReceiveInterface().lock();
	if (!rcontext) {
		Logger::LogError("[UR5PollThread] Could not get a lock on RTDEReceiveInterface");
	}
	else {
		const std::lock_guard<std::mutex> lock(machineinfo_ptr->info_mutex);
		std::vector<double> toolpose = rcontext->getActualTCPPose();
		if (toolpose.size() == 6) {
			machineinfo_ptr->tool.actual_data.position = glm::vec3(toolpose[0], toolpose[1], toolpose[2]);
			machineinfo_ptr->tool.actual_data.rotation = glm::vec3(toolpose[3], toolpose[4], toolpose[5]);
			std::stringstream ss;
			ss << "Tool position: [" << machineinfo_ptr->tool.actual_data.position.x << " " << machineinfo_ptr->tool.actual_data.position.y << " " << machineinfo_ptr->tool.actual_data.position.z << "]";
			Logger::LogInfo(ss.str());
		}
		else {
			Logger::LogWarning("Toolpose did not return the correct pose size");
		}
		
	}
	
}
