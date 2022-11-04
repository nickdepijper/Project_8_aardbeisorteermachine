#pragma once
#include <string>
#include <sstream>
#include <memory>

#define DEF_WEAK(name) typedef std::weak_ptr<##name> wptr_##name;
#define DEF_SHARED(name) typedef std::shared_ptr<##name> ptr_##name;
#define DEF_UNIQUE(name) typedef std::unique_ptr<##name> uptr_##name;

class Object {
public:
	virtual std::string ToString() {
		return std::string("Object");
	}
};