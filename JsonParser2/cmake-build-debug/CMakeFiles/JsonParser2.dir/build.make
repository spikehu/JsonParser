# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = D:\CLion_2021.1.2_Protable\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = D:\CLion_2021.1.2_Protable\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = G:\C++code\JsonParser2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = G:\C++code\JsonParser2\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/JsonParser2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/JsonParser2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/JsonParser2.dir/flags.make

CMakeFiles/JsonParser2.dir/main.cpp.obj: CMakeFiles/JsonParser2.dir/flags.make
CMakeFiles/JsonParser2.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\C++code\JsonParser2\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/JsonParser2.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\JsonParser2.dir\main.cpp.obj -c G:\C++code\JsonParser2\main.cpp

CMakeFiles/JsonParser2.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/JsonParser2.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E G:\C++code\JsonParser2\main.cpp > CMakeFiles\JsonParser2.dir\main.cpp.i

CMakeFiles/JsonParser2.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/JsonParser2.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S G:\C++code\JsonParser2\main.cpp -o CMakeFiles\JsonParser2.dir\main.cpp.s

CMakeFiles/JsonParser2.dir/JObject.cpp.obj: CMakeFiles/JsonParser2.dir/flags.make
CMakeFiles/JsonParser2.dir/JObject.cpp.obj: ../JObject.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\C++code\JsonParser2\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/JsonParser2.dir/JObject.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\JsonParser2.dir\JObject.cpp.obj -c G:\C++code\JsonParser2\JObject.cpp

CMakeFiles/JsonParser2.dir/JObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/JsonParser2.dir/JObject.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E G:\C++code\JsonParser2\JObject.cpp > CMakeFiles\JsonParser2.dir\JObject.cpp.i

CMakeFiles/JsonParser2.dir/JObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/JsonParser2.dir/JObject.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S G:\C++code\JsonParser2\JObject.cpp -o CMakeFiles\JsonParser2.dir\JObject.cpp.s

CMakeFiles/JsonParser2.dir/Parser.cpp.obj: CMakeFiles/JsonParser2.dir/flags.make
CMakeFiles/JsonParser2.dir/Parser.cpp.obj: ../Parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\C++code\JsonParser2\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/JsonParser2.dir/Parser.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\JsonParser2.dir\Parser.cpp.obj -c G:\C++code\JsonParser2\Parser.cpp

CMakeFiles/JsonParser2.dir/Parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/JsonParser2.dir/Parser.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E G:\C++code\JsonParser2\Parser.cpp > CMakeFiles\JsonParser2.dir\Parser.cpp.i

CMakeFiles/JsonParser2.dir/Parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/JsonParser2.dir/Parser.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S G:\C++code\JsonParser2\Parser.cpp -o CMakeFiles\JsonParser2.dir\Parser.cpp.s

# Object files for target JsonParser2
JsonParser2_OBJECTS = \
"CMakeFiles/JsonParser2.dir/main.cpp.obj" \
"CMakeFiles/JsonParser2.dir/JObject.cpp.obj" \
"CMakeFiles/JsonParser2.dir/Parser.cpp.obj"

# External object files for target JsonParser2
JsonParser2_EXTERNAL_OBJECTS =

JsonParser2.exe: CMakeFiles/JsonParser2.dir/main.cpp.obj
JsonParser2.exe: CMakeFiles/JsonParser2.dir/JObject.cpp.obj
JsonParser2.exe: CMakeFiles/JsonParser2.dir/Parser.cpp.obj
JsonParser2.exe: CMakeFiles/JsonParser2.dir/build.make
JsonParser2.exe: CMakeFiles/JsonParser2.dir/linklibs.rsp
JsonParser2.exe: CMakeFiles/JsonParser2.dir/objects1.rsp
JsonParser2.exe: CMakeFiles/JsonParser2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=G:\C++code\JsonParser2\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable JsonParser2.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\JsonParser2.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/JsonParser2.dir/build: JsonParser2.exe

.PHONY : CMakeFiles/JsonParser2.dir/build

CMakeFiles/JsonParser2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\JsonParser2.dir\cmake_clean.cmake
.PHONY : CMakeFiles/JsonParser2.dir/clean

CMakeFiles/JsonParser2.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" G:\C++code\JsonParser2 G:\C++code\JsonParser2 G:\C++code\JsonParser2\cmake-build-debug G:\C++code\JsonParser2\cmake-build-debug G:\C++code\JsonParser2\cmake-build-debug\CMakeFiles\JsonParser2.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/JsonParser2.dir/depend

