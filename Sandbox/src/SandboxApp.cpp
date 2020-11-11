
#include <PaperCraft.h>
#include <iostream>

class App : public PC::Application {
public:
	App() {

	}
	~App() {

	}
};



PC::Application* PC::CreateApplication() {
	std::cout << "Hello " << std::endl;
	return new App();
}
