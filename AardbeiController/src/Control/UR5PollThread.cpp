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
		AquireToolData(rcontext);
		AquireMachineData(rcontext);
		AquireJointData(rcontext);

		Logger::LogDebug(machineinfo_ptr->tool.ToString());
	}
	
}

void AardbeiController::Control::UR5PollThread::AquireToolData(std::shared_ptr<ur_rtde::RTDEReceiveInterface> rcontext)
{
	//Get the tool pose (position/rotation)
	std::vector<double> toolpose = rcontext->getActualTCPPose();
	if (toolpose.size() == 6) {
		machineinfo_ptr->tool.actual_data.position = glm::dvec3(toolpose[0], toolpose[1], toolpose[2]);
		machineinfo_ptr->tool.actual_data.rotation = glm::dvec3(toolpose[3], toolpose[4], toolpose[5]);
	}
	toolpose.clear();
	toolpose = rcontext->getTargetTCPPose();
	if (toolpose.size() == 6) {
		machineinfo_ptr->tool.target_data.position = glm::dvec3(toolpose[0], toolpose[1], toolpose[2]);
		machineinfo_ptr->tool.target_data.rotation = glm::dvec3(toolpose[3], toolpose[4], toolpose[5]);
	}

	//Get the speed
	std::vector<double> toolspeed = rcontext->getActualTCPSpeed();
	if (toolspeed.size() == 3) {
		machineinfo_ptr->tool.actual_data.speed = glm::dvec3(toolspeed[0], toolspeed[1], toolspeed[2]);
	}
	toolspeed.clear();
	toolspeed = rcontext->getTargetTCPSpeed();
	if (toolspeed.size() == 3) {
		machineinfo_ptr->tool.target_data.speed = glm::dvec3(toolspeed[0], toolspeed[1], toolspeed[2]);
	}
}

void AardbeiController::Control::UR5PollThread::AquireJointData(std::shared_ptr<ur_rtde::RTDEReceiveInterface> rcontext)
{
	
	std::vector<double> temps = rcontext->getJointTemperatures();
	std::vector<double> volts = rcontext->getActualJointVoltage();
	std::vector<int32_t> modes = rcontext->getJointMode();
	
	std::vector<double> actual_current = rcontext->getActualCurrent();
	std::vector<double> target_current = rcontext->getTargetCurrent();

	std::vector<double> actual_position = rcontext->getActualQ();
	std::vector<double> target_position = rcontext->getTargetQ();

	std::vector<double> actual_velocity = rcontext->getActualQd();
	std::vector<double> target_velocity = rcontext->getTargetQd();

	for (int i = 0; i < machineinfo_ptr->joints.size(); i++) {
		machineinfo_ptr->joints[i].temp = temps[i];
		machineinfo_ptr->joints[i].voltage = volts[i];
		machineinfo_ptr->joints[i].mode = modes[i];

		machineinfo_ptr->joints[i].actual_data.current = actual_current[i];
		machineinfo_ptr->joints[i].target_data.current = target_current[i];

		machineinfo_ptr->joints[i].actual_data.position = actual_position[i];
		machineinfo_ptr->joints[i].target_data.position = target_position[i];

		machineinfo_ptr->joints[i].actual_data.velocity = actual_velocity[i];
		machineinfo_ptr->joints[i].target_data.velocity = target_velocity[i];
	}
}

void AardbeiController::Control::UR5PollThread::AquireMachineData(std::shared_ptr<ur_rtde::RTDEReceiveInterface> rcontext)
{
	double voltage = rcontext->getActualRobotVoltage();
	double current = rcontext->getActualRobotCurrent();
	int32_t mode = rcontext->getRobotMode();
	int32_t status = rcontext->getRobotStatus();
	int32_t safety_status = rcontext->getSafetyStatusBits();

	machineinfo_ptr->current = current;
	machineinfo_ptr->voltage = voltage;
	machineinfo_ptr->mode = (RobotMode) mode;
	machineinfo_ptr->status.SetStatus(status);
	machineinfo_ptr->safety_status.SetStatus(safety_status);
	return;
}
