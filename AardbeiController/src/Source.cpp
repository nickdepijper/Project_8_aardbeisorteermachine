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
#include "StrawberryMachine.h"
#include <thread>
#include "Util/FileManager.h"

#define PI 3.1415

using namespace ur_rtde;
using namespace std::chrono;
using namespace AardbeiController::Util;

AardbeiController::StrawberryMachine* machine;

void MovePick(std::vector<double> pose, double speed);
void MovePlace(int row, int col, double speed);

int main(int argc, char* argv[])
{
	
	machine = new AardbeiController::StrawberryMachine("./config/config.json");

	double speed = 0.2;
	bool Continue = true;
	int rows = 9;
	int cols = 14;
	int row = 0;
	int col = 0;
	try {

		while (Continue) {
			std::this_thread::sleep_for(std::chrono::seconds(1));
			// genereer random positie
			srand(static_cast <unsigned int> (time(0)));
			int x_mm = rand() % 60 - 30;
			int y_mm = rand() % 15 + 25;
			int yaw_hund = rand() % 6283 - 3142;
			
			float x = float(x_mm) / 100.0f;
			float y = -(float(y_mm) / 100.0f);
			float yaw = float(yaw_hund) / 1000.0f;
			
			std::vector<double> pose{ x, y, 0.25, 0, (PI/2), 0};
			
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
		};
	}
	catch (std::exception ex) {
		std::cout << ex.what() << std::endl;
		return 1;
	}
	// Parameters

	return 1;
}

void MovePick(std::vector<double> pose, double speed) {
	
	std::shared_ptr<AardbeiController::Control::MachineContext> context = machine->GetMachineContext().lock();
	std::shared_ptr<RTDEControlInterface> rtde_move = context->GetControlInterface().lock();

	std::vector<double> wrist{ (PI / 2), 0, 0, 0, 0, 0};

	Logger::LogDebug("Pick at: ");
	for (int i = 0; i < pose.size(); i++) {
		std::cout << pose[i];
		std::cout << " ";
	}
	std::cout << std::endl;

	rtde_move->moveL(pose, speed, 0.5);
	//rtde_move.moveJ(wrist);
	pose[2] = 0.1;
	rtde_move->moveL(pose, speed, 0.5);
	pose[2] = 0.2;
	rtde_move->moveL(pose, speed, 0.5);
}

void MovePlace(int row, int col, double speed) {
	std::shared_ptr<AardbeiController::Control::MachineContext> context = machine->GetMachineContext().lock();
	std::shared_ptr<RTDEControlInterface> rtde_move = context->GetControlInterface().lock();

	float dist = 0.039f;
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

	rtde_move->moveL(pose, speed, 0.5);
	pose[2] = 0.1;
	rtde_move->moveL(pose, speed, 0.5);
	pose[2] = 0.2;
	rtde_move->moveL(pose, speed, 0.5);
}