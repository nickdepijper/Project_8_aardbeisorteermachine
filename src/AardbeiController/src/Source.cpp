//#include <ur_rtde/rtde_control_interface.h>
//#include <ur_rtde/rtde_receive_interface.h>
//#include "ur_rtde/rtde_io_interface.h"
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

AardbeiController::StrawberryMachine* machine;

int main(int argc, char* argv[])
{
	machine = new AardbeiController::StrawberryMachine("./config/config.json");
	machine->Start();
}
