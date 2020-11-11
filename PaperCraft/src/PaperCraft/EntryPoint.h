#pragma once

#include "Main.h"
extern PC::Application* PC::CreateApplication();

int main(int argc, char** argv) {

	auto app = PC::CreateApplication();
	app->Run();
	delete app;


}