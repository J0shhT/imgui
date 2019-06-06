project "ImGui"
	kind "StaticLib"
	language "C++"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("obj/" .. outputdir .. "/%{prj.name}")
	
	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",
        "examples/imgui_impl_glfw.h",
        "examples/imgui_impl_glfw.cpp",
        "examples/imgui_impl_opengl3.h",
        "examples/imgui_impl_opengl3.cpp"
   }
	
	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"
        
	filter { "system:windows", "configurations:Release" }
		buildoptions "/MT"
