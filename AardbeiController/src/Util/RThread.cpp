#include "Util/RThread.h"
#include <iostream>
#include "Util/Logger.h"

#include <chrono>
namespace AardbeiController::Util {
	void EmptyFunc();

	RThread::RThread()
	{
		state = RThreadState::INIT;
		stoprequested = false;
		pauserequested = false;
		finished = false;
		delegate_func = Delegate<RThreadFunc>(&EmptyFunc);
		state = RThreadState::READY;
		min_exec_time_ms = 0;
	}

	RThread::RThread(Util::Delegate<RThreadFunc>& _func, int frequency = 60)
	{
		state = RThreadState::INIT;
		stoprequested = false;
		delegate_func = _func;
		state = RThreadState::READY;
		min_exec_time_ms = (long long) round((1.0 / ((double)frequency)) * 1000.0);
	}

	RThread::RThread(int frequency)
	{
		state = RThreadState::INIT;
		stoprequested = false;
		delegate_func = Delegate<RThreadFunc>(&EmptyFunc);
		state = RThreadState::READY;
		min_exec_time_ms = (long long)round((1.0 / ((double)frequency)) * 1000.0);
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
				state = RThreadState::RUNNING;
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
				Logger::LogInfo("[RThread] Stopping thread from PAUSED state");
				stoprequested = true;
				pauserequested = false;
				break;
			case RThreadState::RUNNING:
				Logger::LogInfo("[RThread] Stopping thread");
				stoprequested = true;
				worker.join();
				Logger::LogInfo("[RThread] Thread stopped and joined");
				break;
			case RThreadState::READY:
				Logger::LogInfo("[RThread] Stopping and Joining thread from READY conditions");
				if (finished) {
					worker.join();
					Logger::LogInfo("[RThread] Thread stopped and joined");
					state = RThreadState::READY;
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

	void RThread::SetThreadFunc(Delegate<RThreadFunc>_func)
	{
		this->delegate_func = _func;
	}

	void RThread::ThreadFunc(RThread* caller)
	{
		std::chrono::steady_clock::time_point start, end;
		long long exec_time;
		long long delta;
		bool must_wait = !(caller->min_exec_time_ms == 0);
		while (!caller->stoprequested) {
			start = std::chrono::high_resolution_clock::now();
			if (caller->pauserequested) {
				caller->PauseFunc();
			}
			caller->delegate_func();

			end = std::chrono::high_resolution_clock::now();
			exec_time = std::chrono::duration_cast<std::chrono::milliseconds>(start - end).count();

			if (must_wait) {
				if (exec_time < caller->min_exec_time_ms) {
					delta = caller->min_exec_time_ms - exec_time;
					std::this_thread::sleep_for(std::chrono::milliseconds(delta));
					//Logger::LogDebug("thread is waiting");
				}
			}
		}
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