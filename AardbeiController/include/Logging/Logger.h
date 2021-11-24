#pragma once
#include <iostream>
#include <windows.h>
#include <string>

#define LOG_INFO(msg) {}

#define CONSOLE_WHITE	7
#define CONSOLE_RED		4
#define CONSOLE_GREEN	2
#define CONSOLE_YELLOW	6

class Logger {
public:
	static inline void LogInfo(std::string msg) {
		ChangeColor(CONSOLE_WHITE);
		LogMessage(msg);
		ChangeColor(CONSOLE_WHITE);
	}

	static inline void LogDebug(std::string msg) {
		ChangeColor(CONSOLE_GREEN);
		LogMessage(msg);
		ChangeColor(CONSOLE_WHITE);
	}

	static inline void LogWarning(std::string msg) {
#if defined(LOG_LEVEL_ALL) || defined(LOG_LEVEL_INFO_WARNINGS)
		ChangeColor(CONSOLE_YELLOW);
		LogMessage(msg);
		ChangeColor(CONSOLE_WHITE);
#endif
	}

	static inline void LogError(std::string msg) {
#ifdef LOG_LEVEL_ALL
		ChangeColor(CONSOLE_RED);
		LogMessage(msg);
		ChangeColor(CONSOLE_WHITE);
#endif
		throw new std::exception(msg.c_str());
	}

private:
	static inline void LogMessage(std::string msg) {
		std::cout << msg << std::endl;
	}


	static inline void ChangeColor(int color) {
		HANDLE h = GetStdHandle(STD_OUTPUT_HANDLE);
		SetConsoleTextAttribute(h, color);
	}
};


