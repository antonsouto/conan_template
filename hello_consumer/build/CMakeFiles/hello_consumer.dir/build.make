# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/cmake/1425/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1425/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pc-integracion/eclipse-workspace/hello_consumer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pc-integracion/eclipse-workspace/hello_consumer/build

# Include any dependencies generated for this target.
include CMakeFiles/hello_consumer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/hello_consumer.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/hello_consumer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hello_consumer.dir/flags.make

CMakeFiles/hello_consumer.dir/codegen:
.PHONY : CMakeFiles/hello_consumer.dir/codegen

CMakeFiles/hello_consumer.dir/src/main.cpp.o: CMakeFiles/hello_consumer.dir/flags.make
CMakeFiles/hello_consumer.dir/src/main.cpp.o: /home/pc-integracion/eclipse-workspace/hello_consumer/src/main.cpp
CMakeFiles/hello_consumer.dir/src/main.cpp.o: CMakeFiles/hello_consumer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/pc-integracion/eclipse-workspace/hello_consumer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hello_consumer.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/hello_consumer.dir/src/main.cpp.o -MF CMakeFiles/hello_consumer.dir/src/main.cpp.o.d -o CMakeFiles/hello_consumer.dir/src/main.cpp.o -c /home/pc-integracion/eclipse-workspace/hello_consumer/src/main.cpp

CMakeFiles/hello_consumer.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/hello_consumer.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pc-integracion/eclipse-workspace/hello_consumer/src/main.cpp > CMakeFiles/hello_consumer.dir/src/main.cpp.i

CMakeFiles/hello_consumer.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/hello_consumer.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pc-integracion/eclipse-workspace/hello_consumer/src/main.cpp -o CMakeFiles/hello_consumer.dir/src/main.cpp.s

CMakeFiles/hello_consumer.dir/src/program_simulator.cpp.o: CMakeFiles/hello_consumer.dir/flags.make
CMakeFiles/hello_consumer.dir/src/program_simulator.cpp.o: /home/pc-integracion/eclipse-workspace/hello_consumer/src/program_simulator.cpp
CMakeFiles/hello_consumer.dir/src/program_simulator.cpp.o: CMakeFiles/hello_consumer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/pc-integracion/eclipse-workspace/hello_consumer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/hello_consumer.dir/src/program_simulator.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/hello_consumer.dir/src/program_simulator.cpp.o -MF CMakeFiles/hello_consumer.dir/src/program_simulator.cpp.o.d -o CMakeFiles/hello_consumer.dir/src/program_simulator.cpp.o -c /home/pc-integracion/eclipse-workspace/hello_consumer/src/program_simulator.cpp

CMakeFiles/hello_consumer.dir/src/program_simulator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/hello_consumer.dir/src/program_simulator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pc-integracion/eclipse-workspace/hello_consumer/src/program_simulator.cpp > CMakeFiles/hello_consumer.dir/src/program_simulator.cpp.i

CMakeFiles/hello_consumer.dir/src/program_simulator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/hello_consumer.dir/src/program_simulator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pc-integracion/eclipse-workspace/hello_consumer/src/program_simulator.cpp -o CMakeFiles/hello_consumer.dir/src/program_simulator.cpp.s

# Object files for target hello_consumer
hello_consumer_OBJECTS = \
"CMakeFiles/hello_consumer.dir/src/main.cpp.o" \
"CMakeFiles/hello_consumer.dir/src/program_simulator.cpp.o"

# External object files for target hello_consumer
hello_consumer_EXTERNAL_OBJECTS =

hello_consumer: CMakeFiles/hello_consumer.dir/src/main.cpp.o
hello_consumer: CMakeFiles/hello_consumer.dir/src/program_simulator.cpp.o
hello_consumer: CMakeFiles/hello_consumer.dir/build.make
hello_consumer: /home/pc-integracion/.conan2/p/hellod866cc1748696/p/lib/libhello.a
hello_consumer: CMakeFiles/hello_consumer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/pc-integracion/eclipse-workspace/hello_consumer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable hello_consumer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello_consumer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hello_consumer.dir/build: hello_consumer
.PHONY : CMakeFiles/hello_consumer.dir/build

CMakeFiles/hello_consumer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hello_consumer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hello_consumer.dir/clean

CMakeFiles/hello_consumer.dir/depend:
	cd /home/pc-integracion/eclipse-workspace/hello_consumer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pc-integracion/eclipse-workspace/hello_consumer /home/pc-integracion/eclipse-workspace/hello_consumer /home/pc-integracion/eclipse-workspace/hello_consumer/build /home/pc-integracion/eclipse-workspace/hello_consumer/build /home/pc-integracion/eclipse-workspace/hello_consumer/build/CMakeFiles/hello_consumer.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/hello_consumer.dir/depend
