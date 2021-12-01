#pragma once

enum class StateEnum {
	INITIALIZING,
	SHUTDOWN,
	EMERGENCY_STOP,
	HOMING,
	DETECT,
	MOVE_TO_STBY,
	GRAB_CLOSE,
	TRAVELING_TO_TRAY,
	INDEXING_TRAY,
	GRAB_OPEN
};

class SystemState {
public:

};