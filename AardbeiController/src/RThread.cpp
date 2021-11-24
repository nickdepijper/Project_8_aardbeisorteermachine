#include "Threading/RThread.h"
#include <iostream>
#include "Logging/Logger.h"
namespace AardbeiController {
	void EmptyFunc();

	RThread::RThread()
	{
		state = RThreadState::INIT;
		stoprequested = false;
		pauserequested = false;
		finished = false;
		delegate_func = Delegate<RThreadFunc>(&EmptyFunc);
		state = RThreadState::READY;
	}

	RThread::RThread(Delegate<RThreadFunc>& _func)
	{
		state = RThreadState::INIT;
		stoprequested = false;
		delegate_func = _func;
		state = RThreadState::READY;
	}

	RThread::~RThread()
	{
		stoprequested = true;
		if (state == RThreadState::READY || state == RThreadState::ERR) {
			worker.join();
		}
		else {
			while (state == RThreadState::RUNNING) {
				std::this_thread::sleep_for(std::chrono::milliseconds(100));
			}
		}
	}

	void RThread::Start()
	{
		error.clear();
		switch (state) {
			case RThreadState::INIT:
				Logger::LogError("Cannot start thread: Thread is still initialising");
				break;
			case RThreadState::PAUSED:
				Logger::LogError("Cannot start thread: Thread is already paused");
				break;
			case RThreadState::READY:
				Logger::LogInfo("Starting new thread");
				if (finished) {
					Logger::LogInfo("Cleaning up old finished thread");
					worker.join();
					finished = false;
					stoprequested = false;
					pauserequested = false;
				}
				worker = std::thread(ThreadFunc, this);
				break;
		}
	}

	void RThread::Stop()
	{
		switch (state) {
			case RThreadState::ERR:
				Logger::LogInfo("[RThread] Stopping thread under Error conditions");
				worker.join();
				break;
			case RThreadState::INIT:
				Logger::LogError("[RThread] Cannot stop thread: No thread was started yet due to INIT state");
				break;
			case RThreadState::PAUSED:
				Logger::LogInfo("[RThread] Pausing thread from PAUSED state");
				stoprequested = true;
				pauserequested = false;
				break;
			case RThreadState::READY:
				Logger::LogInfo("[RThread] Stopping and Joining thread from READY conditions");
				if (finished) {
					worker.join();
					Logger::LogInfo("[RThread] Thread stopped and joined");
				}
				else {
					Logger::LogInfo("[RThread] No threads to stop");
				}
				break;
		}
	}

	void RThread::Pause()
	{
		switch (state) {
		case RThreadState::ERR:
			Logger::LogError("[RThread] Cannot pause thread: Thread was previously stopped due to an ERROR state");
			break;
		case RThreadState::INIT:
			Logger::LogError("[RThread] Cannot pause thread: No thread was started yet due to INIT state");
			break;
		case RThreadState::READY:
			Logger::LogError("[RThread] Cannot pause thread: Thread is not running");
			break;
		case RThreadState::PAUSED:
			Logger::LogInfo("[RThread] Cannot pause thread: Thread is already paused");
			return;
			break;
		case RThreadState::RUNNING:
			Logger::LogInfo("[RThread] Pausing thread");
			pauserequested = true;
			break;
		
		}
	}

	void RThread::Resume()
	{
		pauserequested = false;
	}

	RThreadState RThread::GetState()
	{
		return this->state;
	}

	std::string RThread::GetError()
	{
		if (!error.empty()) {
			return std::string(error);
		}
		return std::string();
	}

	bool RThread::IsStopRequested()
	{
		return stoprequested;
	}

	void RThread::SetThreadFunc(Delegate<RThreadFunc>& _func)
	{
		this->delegate_func = _func;
	}

	void RThread::ThreadFunc(RThread* caller)
	{
		caller->delegate_func();
		caller->finished = true;
		caller->state = RThreadState::READY;
	}

	void RThread::PauseFunc()
	{
		Logger::LogInfo("[RThread] Thread entering pause");
		while (pauserequested) {
			state = RThreadState::PAUSED;
			std::this_thread::sleep_for(std::chrono::milliseconds(PAUSE_DELAY));
		}
		state = RThreadState::RUNNING;
		Logger::LogInfo("[RThread] Thread resuming execution");
	}

	void EmptyFunc() {
		return;
	}
}