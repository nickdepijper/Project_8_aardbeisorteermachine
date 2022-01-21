#pragma once

#include <string>
#include <vector>

class FileManager {
public:
	static bool CheckFileExistance(std::string file);
	static std::string ReadTextFile(std::string filename);
	static bool WriteStringToFile(std::string filename, std::string content, bool trunc = true);
	static bool WriteDataToFile(std::string filename, char* data, size_t size, bool trunc = true);
};