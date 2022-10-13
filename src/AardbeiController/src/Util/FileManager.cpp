#include "Util/FileManager.h"
#include <unordered_map>
#include <iostream>
#include <fstream>
#include <sstream>
#include <stdexcept>
#include <cstddef>
#include <filesystem>

bool FileManager::CheckFileExistance(std::string file)
{
	std::string result = file;
	if (result == "") {
		throw new std::exception("file specifier cannot be empty");
	}
	std::fstream stream;

	stream.open(result, stream.in);
	if (stream.fail()) {
		return false;
	}
	stream.close();
	return true;
}

std::string FileManager::ReadTextFile(std::string filename)
{
	if (CheckFileExistance(filename)) {
		std::string result = filename;
		if (result == "") {
			throw new std::exception("file specifier cannot be empty");
		}
		std::fstream stream;
		std::stringstream ss;

		stream.open(result, stream.in);
		if (stream.fail()) {
			stream.close();
			return "";
		}
		ss << stream.rdbuf();
		stream.close();
		return ss.str();
	}
	return "";
}

bool FileManager::WriteStringToFile(std::string filename, std::string content, bool trunc)
{
	if (!CheckFileExistance(filename)) {
		std::string result = filename;
		if (result == "") {
			throw new std::exception("file specifier cannot be empty");
		}
		std::fstream stream;
		if (trunc)
			stream.open(result, stream.out | stream.trunc);
		else
			stream.open(result, stream.out);
		if (stream.fail()) {
			stream.flush();
			stream.close();
			return false;
		}
		stream << content;
		stream.flush();
		stream.close();
		return true;
	}
	return false;
}

bool FileManager::WriteDataToFile(std::string filename, char* data, size_t size, bool trunc)
{
	if (!CheckFileExistance(filename)) {
		std::string result = filename;
		if (result == "") {
			throw new std::exception("file specifier cannot be empty");
		}
		std::fstream stream;
		if (trunc)
			stream.open(result, stream.out | stream.trunc);
		else
			stream.open(result, stream.out);
		if (stream.fail()) {
			stream.flush();
			stream.close();
			return false;
		}
		stream.write(data, size);
		stream.flush();
		stream.close();
		return true;
	}
	return false;
}
