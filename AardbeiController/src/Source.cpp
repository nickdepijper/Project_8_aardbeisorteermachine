#include <ur_rtde/rtde_control_interface.h>
#include <ur_rtde/rtde_receive_interface.h>
#include "ur_rtde/rtde_io_interface.h"
#include <thread>
#include <chrono>
#include <iostream>
#include <memory>
#include <thread>
#include <ctime>
#include <cstdlib>
#include <sstream>
#include "Util/Logger.h"
#include "string.h"


using namespace ur_rtde;
using namespace std::chrono;
using namespace AardbeiController::Util;

//#define RPATH "169.254.208.100"
#define RPATH "192.168.1.100"
#define PI 3.141592653589f

void Receive();
void IOBus();
void MovePick(std::vector<double> pose, double speed);
void MovePlace(int row, int col, double speed);

int main(int argc, char* argv[])
{
	double speed = 0.2;
	bool Continue = true;
	int rows = 9;
	int cols = 14;
	int row = 0;
	int col = 0;
	try {
		std::cout << "Connecting to UR-5" << std::endl;
		//Receive();

		while (Continue) {

			// genereer random positie
			srand(static_cast <unsigned int> (time(0)));
			int x_mm = rand() % 60 - 30;
			int y_mm = rand() % 15 + 25;
			int yaw_hund = rand() % 6283 - 3142;
			
			float x = float(x_mm) / 100.0f;
			float y = -(float(y_mm) / 100.0f);
			float yaw = float(yaw_hund) / 1000.0f;

			std::vector<double> pose{ x, y, 0.2, 0, (PI), 0};
	
			MovePick(pose, speed);
			MovePlace(row, col, speed);

			if (col >= cols) {
				col = 0;
				row++;
				if (row > rows) {
					Continue = false;
				}
			}
			else {
				col++;
			}

			//std::cout << "continue?" << std::endl;
			//std::cin >> Continue;
		};

		//IOBus();
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
		else
			Logger::LogDebug("Weh doede gij nou wir");
	}
}

void Receive() {
	RTDEReceiveInterface rtde_receive(RPATH);
	
	Logger::LogDebug("Connected to UR-5");
	std::vector<double> joint_positions;
	while (rtde_receive.isConnected()) {
		joint_positions = rtde_receive.getActualQ();
	
		system("cls");
		
		for (int i = 0; i < joint_positions.size(); i++) {

			std::cout << joint_positions[i];// *57.29577;
			std::cout << " ";
		}
		std::cout << std::endl;
		Sleep(100);
	}
}

void MovePick(std::vector<double> pose, double speed) {
	
	RTDEControlInterface rtde_move(RPATH);

	std::vector<double> wrist{ (PI / 2), 0, 0, 0, 0, 0};

	Logger::LogDebug("Pick at: ");
	for (int i = 0; i < pose.size(); i++) {
		std::cout << pose[i];
		std::cout << " ";
	}
	std::cout << std::endl;

	rtde_move.moveL(pose, speed, 0.5);
	//rtde_move.moveJ(wrist);
	pose[2] = 0.1;
	rtde_move.moveL(pose, speed, 0.5);
	pose[2] = 0.2;
	rtde_move.moveL(pose, speed, 0.5);
}

void MovePlace(int row, int col, double speed) {
	float dist = 0.039f;
	RTDEControlInterface rtde_move(RPATH);
	std::vector<double> pose{(0.3-(col*dist)), (-0.85+(row*dist)), 0.2, 0, (PI), 0};
	Logger::LogDebug("Place at: ");
	for (int i = 0; i < pose.size(); i++) {
		std::cout << pose[i];
		std::cout << " ";
	}
	//std::cout << " (row: " << row << " col: " << col << ")" << std::endl;
	std::stringstream TrayLocation;
	TrayLocation << " (row: " << row << " col: " << col << ")";
	Logger::LogDebug(TrayLocation);

	rtde_move.moveL(pose, speed, 0.5);
	pose[2] = 0.1;
	rtde_move.moveL(pose, speed, 0.5);
	pose[2] = 0.2;
	rtde_move.moveL(pose, speed, 0.5);
}