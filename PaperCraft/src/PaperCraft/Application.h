#pragma once

#include "Main.h"

namespace PC {
	class Application {
	public:
		Application();
		virtual ~Application();

		void Run();
	};

	Application* CreateApplication();
}
