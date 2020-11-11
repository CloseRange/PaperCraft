project "PaperCraft"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"
	systemversion "latest"

	targetdir ("%{wks.location}/bin/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/bin/int/" .. outputdir .. "/%{prj.name}")

	pchheader "pcpch.h"
	pchsource "src/pcpch.cpp"

	files {
		"src/**.h",
		"src/**.cpp"
		-- "vendor/stb_image/**.h",
		-- "vendor/stb_image/**.cpp",
		-- "vendor/glm/glm/**.hpp",
		-- "vendor/glm/glm/**.inl",
	}

	defines {
		"GLFW_INCLUDE_NONE"
	}

	includedirs {
		"src"
		-- "vendor/spdlog/include",
		-- "%{IncludeDir.GLFW}",
		-- "%{IncludeDir.Glad}",
		-- "%{IncludeDir.ImGui}",
		-- "%{IncludeDir.glm}",
		-- "%{IncludeDir.stb_image}",
		-- "%{IncludeDir.entt}"
	}

	links {
		-- "GLFW",
		-- "Glad",
		-- "ImGui",
		-- "opengl32.lib"
	}

	filter "configurations:Debug"
		defines "PC_DEBUG"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		defines "PC_RELEASE"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		defines "PC_DIST"
		runtime "Release"
		optimize "on"
