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

# Utility rule file for jsoncpp_readerwriter_tests.

# Include any custom commands dependencies for this target.
include Dependencies/JSONCPP/src/jsontestrunner/CMakeFiles/jsoncpp_readerwriter_tests.dir/compiler_depend.make

# Include the progress variables for this target.
include Dependencies/JSONCPP/src/jsontestrunner/CMakeFiles/jsoncpp_readerwriter_tests.dir/progress.make

Dependencies/JSONCPP/src/jsontestrunner/CMakeFiles/jsoncpp_readerwriter_tests: bin/jsontestrunner_exe.exe
Dependencies/JSONCPP/src/jsontestrunner/CMakeFiles/jsoncpp_readerwriter_tests: bin/jsoncpp_test.exe
	cd /d C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\cmake-build-debug\Dependencies\JSONCPP\src\jsontestrunner && C:\Users\Esilff\AppData\Local\Programs\Python\Python310\python.exe -B C:/Users/Esilff/Documents/Git/ESGI-3D-Viewer/Dependencies/JSONCPP/src/jsontestrunner/../../test/runjsontests.py C:/Users/Esilff/Documents/Git/ESGI-3D-Viewer/cmake-build-debug/bin/jsontestrunner_exe.exe C:/Users/Esilff/Documents/Git/ESGI-3D-Viewer/Dependencies/JSONCPP/src/jsontestrunner/../../test/data

jsoncpp_readerwriter_tests: Dependencies/JSONCPP/src/jsontestrunner/CMakeFiles/jsoncpp_readerwriter_tests
jsoncpp_readerwriter_tests: Dependencies/JSONCPP/src/jsontestrunner/CMakeFiles/jsoncpp_readerwriter_tests.dir/build.make
.PHONY : jsoncpp_readerwriter_tests

# Rule to build all files generated by this target.
Dependencies/JSONCPP/src/jsontestrunner/CMakeFiles/jsoncpp_readerwriter_tests.dir/build: jsoncpp_readerwriter_tests
.PHONY : Dependencies/JSONCPP/src/jsontestrunner/CMakeFiles/jsoncpp_readerwriter_tests.dir/build

Dependencies/JSONCPP/src/jsontestrunner/CMakeFiles/jsoncpp_readerwriter_tests.dir/clean:
	cd /d C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\cmake-build-debug\Dependencies\JSONCPP\src\jsontestrunner && $(CMAKE_COMMAND) -P CMakeFiles\jsoncpp_readerwriter_tests.dir\cmake_clean.cmake
.PHONY : Dependencies/JSONCPP/src/jsontestrunner/CMakeFiles/jsoncpp_readerwriter_tests.dir/clean

Dependencies/JSONCPP/src/jsontestrunner/CMakeFiles/jsoncpp_readerwriter_tests.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\Dependencies\JSONCPP\src\jsontestrunner C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\cmake-build-debug C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\cmake-build-debug\Dependencies\JSONCPP\src\jsontestrunner C:\Users\Esilff\Documents\Git\ESGI-3D-Viewer\cmake-build-debug\Dependencies\JSONCPP\src\jsontestrunner\CMakeFiles\jsoncpp_readerwriter_tests.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : Dependencies/JSONCPP/src/jsontestrunner/CMakeFiles/jsoncpp_readerwriter_tests.dir/depend
