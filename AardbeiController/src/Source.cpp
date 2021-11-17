#include <ur_rtde/rtde_control_interface.h>
#include <ur_rtde/rtde_receive_interface.h>
#include "ur_rtde/rtde_io_interface.h"
#include <thread>
#include <chrono>
#include <iostream>
#include <memory>
#include <thread>

using namespace ur_rtde;
using namespace std::chrono;

#define RPATH "169.254.208.100"
//#define RPATH "192.168.56.1"

void Receive();
void IOBus();

int main(int argc, char* argv[])
{
	//RTDEControlInterface rtde_control("127.0.0.1");

	try {
		std::cout << "Connecting to UR-5" << std::endl;
		IOBus();
	}
	catch (std::exception ex) {
		std::cout << ex.what() << std::endl;
		return 1;
	}
	// Parameters

	return 1;
}

void IOBus() {
	RTDEIOInterface rtde_io(RPATH);
	while (true) {
		char value;
		std::cin >> value;

		if (value == '1') {
			rtde_io.setStandardDigitalOut(0, true);
			rtde_io.setStandardDigitalOut(1, false);
		}
		else if (value == '0') {
			rtde_io.setStandardDigitalOut(0, false);
			rtde_io.setStandardDigitalOut(1, true);
		}

	}
	

}

void Receive() {
	RTDEReceiveInterface rtde_receive(RPATH);
	std::cout << "Connected to UR-5" << std::endl;
	std::vector<double> joint_positions;
	while (rtde_receive.isConnected()) {
		joint_positions = rtde_receive.getActualQ();
	
		system("cls");
		
		for (int i = 0; i < joint_positions.size(); i++) {
			std::cout << joint_positions[i] * 57.29577;
			std::cout << " ";
		}
		std::cout << std::endl;
		Sleep(100);
	}
}

