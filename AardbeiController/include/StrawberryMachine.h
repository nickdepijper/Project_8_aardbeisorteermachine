#pragma once
#include "IDisposable.h"

class StrawberryMachine : public IDisposable{
public:
	StrawberryMachine();

	~StrawberryMachine();

	void Dispose();
};