#pragma once
#include "boost/asio/serial_port.hpp"
class SerialContext {
	boost::asio::serial_port* serialport;
	SerialContext() {
		serialport = new boost::asio::serial_port("COM4", )
	}

	~SerialContext() {

	}
};