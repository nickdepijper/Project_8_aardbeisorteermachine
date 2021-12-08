#include "Core/MachineContext.h"
#include <sstream>
#include <exception>

namespace AardbeiController {
	MachineContext::MachineContext()
	{
		robot_ip = std::string();
	}
	
	MachineContext::~MachineContext()
	{
		this->Dispose();
	}
	
	bool MachineContext::Init(std::string network_path)
	{
		this->robot_ip = network_path;
		//try to connect control interface
		bool control_result = InitControl();
		if (!control_result) { 
			return false; 
		}
	
		//try to connect receive interface
		bool receive_result = InitReceive();
		if (!receive_result) {
			this->control_interface->disconnect();
			return false;
		}
	
		//try to connect io interface
		bool io_result = InitIO();
		if (!io_result) {
			this->receive_interface->disconnect();
			this->control_interface->disconnect();
			return false;
		}
		return true;
	}

	bool MachineContext::IsValid()
	{
		return control_interface->isConnected() && receive_interface->isConnected();
	}
	
	bool MachineContext::InitControl()
	{
		try {
			Logger::LogDebug("[MachineContext] Connecting Control Interface to UR robot");
			control_interface = std::make_shared<RTDEControlInterface>(this->robot_ip);
			Logger::LogDebug("[MachineContext] Control Interface connected");
			return true;
		}
		catch (std::exception ex) {
			std::stringstream ss;
			ss << "[MachineContext] An Error occured while trying to connect to Control Interface: " << ex.what();
			Logger::LogError(ss.str());
			return false;
		}
	}
	
	bool MachineContext::InitIO()
	{
		try {
			Logger::LogDebug("[MachineContext] Connecting IO Interface to UR robot");
			io_interface = std::make_shared<RTDEIOInterface>(this->robot_ip);
			Logger::LogDebug("[MachineContext] IO Interface connected");
			return true;
		}
		catch (std::exception ex) {
			std::stringstream ss;
			ss << "[MachineContext] An Error occured while trying to connect to IO Interface:" << ex.what();
			Logger::LogError(ss.str());
			return false;
		}
	}
	
	bool MachineContext::InitReceive()
	{
		try {
			Logger::LogDebug("[MachineContext] Connecting DataReceive Interface to UR robot");
			receive_interface = std::make_shared<RTDEReceiveInterface>(this->robot_ip);
			Logger::LogDebug("[MachineContext] DataReceive Interface connected");
			return true;
		}
		catch (std::exception ex) {
			std::stringstream ss;
			ss << "[MachineContext] An Error occured while trying to connect to DataReceive Interface:" << ex.what();
			Logger::LogError(ss.str());
			return false;
		}
	}
	
	std::weak_ptr<RTDEControlInterface> MachineContext::GetControlInterface()
	{
		return control_interface;
	}
	
	std::weak_ptr<RTDEIOInterface> MachineContext::GetIOInterface()
	{
		return io_interface;
	}
	
	std::weak_ptr<RTDEReceiveInterface> MachineContext::GetReceiveInterface()
	{
		return receive_interface;
	}
	
	void MachineContext::Dispose()
	{
		Logger::LogInfo("[MachineContext] Disposing context");
		if (control_interface->isConnected()) {
			control_interface->disconnect();
			Logger::LogDebug("[MachineContext] Control interface disconnected");
		}
	
		if (receive_interface->isConnected()) {
			receive_interface->disconnect();
			Logger::LogDebug("[MachineContext] DataReceive interface disconnected");
		}
	}

}




