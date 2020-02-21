workspace "FunctionTables"
	startproject "FunctionTables"

	architecture "x64"

	configurations
	{
		"Debug",
		"Release",
	}

outputDir = "/%{cfg.system}/%{cfg.architecture}/%{cfg.buildcfg}"

project "FunctionTables"
	location "FunctionTables"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++17"
	staticruntime "On"
	characterset "Unicode"
	vectorextensions "AVX"
	floatingpoint "Fast"

	targetdir ("bin/%{prj.name}" .. outputDir)
	objdir ("bin/%{prj.name}/intermediates" .. outputDir)

	pchheader "pch.h"
	pchsource "FunctionTables/src/pch.cpp"

	files
	{
		"%{prj.name}/**.cpp",
		"%{prj.name}/**.h",
		"%{prj.name}/src/include/**.h",
		"%{prj.name}/src/**.h",
		"%{prj.name}/src/**.cpp"
	}

	includedirs
	{
		"%{prj.name}/src/include",
	}

	defines
	{
		""
	}

	flags
	{
		"MultiProcessorCompile"
	}

	links
	{
		
	}
	
	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		optimize "Debug"
		symbols "Full"

	filter "configurations:Release"
		optimize "Speed"
		symbols "Off"