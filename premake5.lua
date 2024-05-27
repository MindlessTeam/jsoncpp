project "Json"
    filename "JsonCpp"

    kind "StaticLib"
    language "C++"
    staticruntime "off"

    targetdir ("%{wks.location}/out/bin/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/out/obj/" .. outputdir .. "/%{prj.name}")

	includedirs
	{
		"include"
	}

    files
    {
        "include/json/**.h",
		"src/lib_json/**.cpp",
		"src/lib_json/**.h",
		"src/lib_json/**.inl"
    }
    
    filter "configurations:Debug"
		defines { "CFG_DEBUG" }
		symbols "On"
		optimize "Off"
	
	filter "configurations:PreRelease"
		defines { "CFG_PRERELEASE" }
		symbols "On"
		optimize "On"
		
	filter "configurations:Release"
		defines { "CFG_RELEASE" }
		symbols "Off"
		optimize "On"