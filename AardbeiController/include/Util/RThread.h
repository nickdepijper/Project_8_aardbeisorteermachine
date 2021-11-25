#pragma once
#include <thread>
#include <mutex>
#include <exception>
#include <string>
#include "Util/Delegate.h"

namespace AardbeiController::Util {
	enum class RThreadState {
		INIT,
		ERR,
		READY,
		RUNNING,
		PAUSED
	};

#define PAUSE_DELAY 10
	
	typedef void RThreadFunc(void);
	
	class RThread {
	public:
		RThread();
		RThread(Delegate<RThreadFunc>& _func);
		~RThread();

		void Start();
		void Stop();
		void Pause();
		void Resume();
	
		RThreadState GetState();
		std::string GetError();
		bool IsStopRequested();

	private:
		std::thread worker;
		Delegate<RThreadFunc> delegate_func;
		static void ThreadFunc(RThread* caller);

	protected:
		RThreadState state;
		bool stoprequested;
		bool pauserequested;
		bool finished;
		std::string error;
		void PauseFunc();
		void SetThreadFunc(Delegate<RThreadFunc> func);
	};
}

