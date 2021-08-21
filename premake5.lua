project "ozz_base"
	kind "StaticLib"
	language "C++"
	cppdialect "C++11"
	staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"include/ozz/base/**.h",
		"src/base/**.cc"
	}

	includedirs
	{
		"include",
		"src"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"


project "ozz_animation"
	kind "StaticLib"
	language "C++"
	cppdialect "C++11"
	staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
	    "include/ozz/animation/runtime/**.h",
		"src/animation/runtime/**.h",
		"src/animation/runtime/**.cc"
	}

	includedirs
	{
		"include",
		"src"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"


-- ozz_geometry is for software skinning
-- we dont need this
--project "ozz_geometry"
--	kind "StaticLib"
--	language "C++"
--	cppdialect "C++11"
--	staticruntime "off"
--
--	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
--	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
--
--	files
--	{
--	    "include/ozz/geometry/runtime/**.h",
--		"src/geometry/runtime/**.h",
--		"src/geometry/runtime/**.cc"
--	}
--
--	includedirs
--	{
--		"include",
--		"src"
--	}
--
--	filter "system:windows"
--		systemversion "latest"
--
--	filter "configurations:Debug"
--		runtime "Debug"
--		symbols "on"
--
--	filter "configurations:Release"
--		runtime "Release"
--		optimize "on"
--
--	filter "configurations:Dist"
--		runtime "Release"
--		optimize "on"


-- ozz_animation_offline provides support for import of assets from digital content creators
-- (where we write the actual importers ourselves)
project "ozz_animation_offline"
	kind "StaticLib"
	language "C++"
	cppdialect "C++11"
	staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	-- wildcards are not recursive here, on purpose
	files
	{
		"include/ozz/animation/offline/*.h",
		"src/animation/offline/*.h",
		"src/animation/offline/*.cc"
	}

	includedirs
	{
		"include",
		"src"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"


-- ozz_animation_fbx is ozz implementation of an offline importer for fbx
-- this has a dependency on the FBX SDK, so we are not using this for now.
--project "ozz_animation_fbx"
--	kind "StaticLib"
--	language "C++"
--	cppdialect "C++11"
--	staticruntime "off"
--
--	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
--	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
--
--	files
--	{
--		"include/ozz/animation/offline/fbx/fbx.h",
--		"include/ozz/animation/offline/fbx/fbx_animation.h",
--		"include/ozz/animation/offline/fbx/fbx_skeleton.h",
--		"src/animation/offline/fbx/fbx.cc",
--		"src/animation/offline/fbx/fbx_animation.cc",
--		"src/animation/offline/fbx/fbx_skeleton.cc"
--	}
--
--	includedirs
--	{
--		"include",
--		"src",
--		"%{IncludeDir.FBXSDK}"
--	}
--
--	filter "system:windows"
--		systemversion "latest"
--
--	filter "configurations:Debug"
--		runtime "Debug"
--		symbols "on"
--
--	filter "configurations:Release"
--		runtime "Release"
--		optimize "on"
--
--	filter "configurations:Dist"
--		runtime "Release"
--		optimize "on"
