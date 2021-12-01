#pragma once
#include <string>
class Object {
public:
	virtual std::string ToString() {
		return std::string("Object");
	}
};