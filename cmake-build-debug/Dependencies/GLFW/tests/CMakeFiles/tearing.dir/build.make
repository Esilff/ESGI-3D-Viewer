# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\Esilff\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\231.9011.31\bin\cmake\win\x64\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\Esilff\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\231.9011.31\bin\cmake\win\x64\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\cmake-build-debug

# Include any dependencies generated for this target.
include Dependencies/GLFW/tests/CMakeFiles/tearing.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Dependencies/GLFW/tests/CMakeFiles/tearing.dir/compiler_depend.make

# Include the progress variables for this target.
include Dependencies/GLFW/tests/CMakeFiles/tearing.dir/progress.make

# Include the compile flags for this target's objects.
include Dependencies/GLFW/tests/CMakeFiles/tearing.dir/flags.make

Dependencies/GLFW/tests/CMakeFiles/tearing.dir/tearing.c.obj: Dependencies/GLFW/tests/CMakeFiles/tearing.dir/flags.make
Dependencies/GLFW/tests/CMakeFiles/tearing.dir/tearing.c.obj: Dependencies/GLFW/tests/CMakeFiles/tearing.dir/includes_C.rsp
Dependencies/GLFW/tests/CMakeFiles/tearing.dir/tearing.c.obj: C:/Users/Esilff/Documents/Git/ESGI-3D-Viewer/Dependencies/GLFW/tests/tearing.c
Dependencies/GLFW/tests/CMakeFiles/tearing.dir/tearing.c.obj: Dependencies/GLFW/tests/CMakeFiles/tearing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Dependencies/GLFW/tests/CMakeFiles/tearing.dir/tearing.c.obj"
	cd /d C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\cmake-build-debug\Dependencies\GLFW\tests && C:\Users\Esilff\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\231.9011.31\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Dependencies/GLFW/tests/CMakeFiles/tearing.dir/tearing.c.obj -MF CMakeFiles\tearing.dir\tearing.c.obj.d -o CMakeFiles\tearing.dir\tearing.c.obj -c C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\Dependencies\GLFW\tests\tearing.c

Dependencies/GLFW/tests/CMakeFiles/tearing.dir/tearing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tearing.dir/tearing.c.i"
	cd /d C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\cmake-build-debug\Dependencies\GLFW\tests && C:\Users\Esilff\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\231.9011.31\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\Dependencies\GLFW\tests\tearing.c > CMakeFiles\tearing.dir\tearing.c.i

Dependencies/GLFW/tests/CMakeFiles/tearing.dir/tearing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tearing.dir/tearing.c.s"
	cd /d C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\cmake-build-debug\Dependencies\GLFW\tests && C:\Users\Esilff\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\231.9011.31\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\Dependencies\GLFW\tests\tearing.c -o CMakeFiles\tearing.dir\tearing.c.s

Dependencies/GLFW/tests/CMakeFiles/tearing.dir/__/deps/glad_gl.c.obj: Dependencies/GLFW/tests/CMakeFiles/tearing.dir/flags.make
Dependencies/GLFW/tests/CMakeFiles/tearing.dir/__/deps/glad_gl.c.obj: Dependencies/GLFW/tests/CMakeFiles/tearing.dir/includes_C.rsp
Dependencies/GLFW/tests/CMakeFiles/tearing.dir/__/deps/glad_gl.c.obj: C:/Users/Esilff/Documents/Git/ESGI-3D-Viewer/Dependencies/GLFW/deps/glad_gl.c
Dependencies/GLFW/tests/CMakeFiles/tearing.dir/__/deps/glad_gl.c.obj: Dependencies/GLFW/tests/CMakeFiles/tearing.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object Dependencies/GLFW/tests/CMakeFiles/tearing.dir/__/deps/glad_gl.c.obj"
	cd /d C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\cmake-build-debug\Dependencies\GLFW\tests && C:\Users\Esilff\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\231.9011.31\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Dependencies/GLFW/tests/CMakeFiles/tearing.dir/__/deps/glad_gl.c.obj -MF CMakeFiles\tearing.dir\__\deps\glad_gl.c.obj.d -o CMakeFiles\tearing.dir\__\deps\glad_gl.c.obj -c C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\Dependencies\GLFW\deps\glad_gl.c

Dependencies/GLFW/tests/CMakeFiles/tearing.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tearing.dir/__/deps/glad_gl.c.i"
	cd /d C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\cmake-build-debug\Dependencies\GLFW\tests && C:\Users\Esilff\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\231.9011.31\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\Dependencies\GLFW\deps\glad_gl.c > CMakeFiles\tearing.dir\__\deps\glad_gl.c.i

Dependencies/GLFW/tests/CMakeFiles/tearing.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tearing.dir/__/deps/glad_gl.c.s"
	cd /d C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\cmake-build-debug\Dependencies\GLFW\tests && C:\Users\Esilff\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\231.9011.31\bin\mingw\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\Dependencies\GLFW\deps\glad_gl.c -o CMakeFiles\tearing.dir\__\deps\glad_gl.c.s

# Object files for target tearing
tearing_OBJECTS = \
"CMakeFiles/tearing.dir/tearing.c.obj" \
"CMakeFiles/tearing.dir/__/deps/glad_gl.c.obj"

# External object files for target tearing
tearing_EXTERNAL_OBJECTS =

bin/tearing.exe: Dependencies/GLFW/tests/CMakeFiles/tearing.dir/tearing.c.obj
bin/tearing.exe: Dependencies/GLFW/tests/CMakeFiles/tearing.dir/__/deps/glad_gl.c.obj
bin/tearing.exe: Dependencies/GLFW/tests/CMakeFiles/tearing.dir/build.make
bin/tearing.exe: lib/libglfw3.a
bin/tearing.exe: Dependencies/GLFW/tests/CMakeFiles/tearing.dir/linkLibs.rsp
bin/tearing.exe: Dependencies/GLFW/tests/CMakeFiles/tearing.dir/objects1
bin/tearing.exe: Dependencies/GLFW/tests/CMakeFiles/tearing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable ..\..\..\bin\tearing.exe"
	cd /d C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\cmake-build-debug\Dependencies\GLFW\tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\tearing.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Dependencies/GLFW/tests/CMakeFiles/tearing.dir/build: bin/tearing.exe
.PHONY : Dependencies/GLFW/tests/CMakeFiles/tearing.dir/build

Dependencies/GLFW/tests/CMakeFiles/tearing.dir/clean:
	cd /d C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\cmake-build-debug\Dependencies\GLFW\tests && $(CMAKE_COMMAND) -P CMakeFiles\tearing.dir\cmake_clean.cmake
.PHONY : Dependencies/GLFW/tests/CMakeFiles/tearing.dir/clean

Dependencies/GLFW/tests/CMakeFiles/tearing.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\Dependencies\GLFW\tests C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\cmake-build-debug C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\cmake-build-debug\Dependencies\GLFW\tests C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\cmake-build-debug\Dependencies\GLFW\tests\CMakeFiles\tearing.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : Dependencies/GLFW/tests/CMakeFiles/tearing.dir/depend
