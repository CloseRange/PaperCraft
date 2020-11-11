
workspace "PaperCraft"
	architecture "x86_64"
	startproject "Sandbox"

	configurations {
		"Debug",
		"Release",
		"Dist"
	}

	-- solution_items {
	-- 	".editorconfig"
	-- }

	flags {
		"MultiProcessorCompile"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.architecture}"

-- Include directories relative to root folder (solution directory)
IncludeDir = {}
-- IncludeDir["ImGui"] = "%{wks.location}/PaperCraft/vendor/imgui"

group "Dependencies"
	include "vendor/premake"
	--include "PaperCraft/vendor/imgui"
group ""

include "PaperCraft"
include "Sandbox"
