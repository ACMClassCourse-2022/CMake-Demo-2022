# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.24.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.24.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/celve/Repositories/Works/CMake-Demo-2022

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/celve/Repositories/Works/CMake-Demo-2022/build

# Include any dependencies generated for this target.
include map/CMakeFiles/libmap.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include map/CMakeFiles/libmap.dir/compiler_depend.make

# Include the progress variables for this target.
include map/CMakeFiles/libmap.dir/progress.make

# Include the compile flags for this target's objects.
include map/CMakeFiles/libmap.dir/flags.make

map/CMakeFiles/libmap.dir/map.cpp.o: map/CMakeFiles/libmap.dir/flags.make
map/CMakeFiles/libmap.dir/map.cpp.o: /Users/celve/Repositories/Works/CMake-Demo-2022/map/map.cpp
map/CMakeFiles/libmap.dir/map.cpp.o: map/CMakeFiles/libmap.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/celve/Repositories/Works/CMake-Demo-2022/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object map/CMakeFiles/libmap.dir/map.cpp.o"
	cd /Users/celve/Repositories/Works/CMake-Demo-2022/build/map && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT map/CMakeFiles/libmap.dir/map.cpp.o -MF CMakeFiles/libmap.dir/map.cpp.o.d -o CMakeFiles/libmap.dir/map.cpp.o -c /Users/celve/Repositories/Works/CMake-Demo-2022/map/map.cpp

map/CMakeFiles/libmap.dir/map.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libmap.dir/map.cpp.i"
	cd /Users/celve/Repositories/Works/CMake-Demo-2022/build/map && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/celve/Repositories/Works/CMake-Demo-2022/map/map.cpp > CMakeFiles/libmap.dir/map.cpp.i

map/CMakeFiles/libmap.dir/map.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libmap.dir/map.cpp.s"
	cd /Users/celve/Repositories/Works/CMake-Demo-2022/build/map && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/celve/Repositories/Works/CMake-Demo-2022/map/map.cpp -o CMakeFiles/libmap.dir/map.cpp.s

map/CMakeFiles/libmap.dir/useless.cpp.o: map/CMakeFiles/libmap.dir/flags.make
map/CMakeFiles/libmap.dir/useless.cpp.o: /Users/celve/Repositories/Works/CMake-Demo-2022/map/useless.cpp
map/CMakeFiles/libmap.dir/useless.cpp.o: map/CMakeFiles/libmap.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/celve/Repositories/Works/CMake-Demo-2022/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object map/CMakeFiles/libmap.dir/useless.cpp.o"
	cd /Users/celve/Repositories/Works/CMake-Demo-2022/build/map && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT map/CMakeFiles/libmap.dir/useless.cpp.o -MF CMakeFiles/libmap.dir/useless.cpp.o.d -o CMakeFiles/libmap.dir/useless.cpp.o -c /Users/celve/Repositories/Works/CMake-Demo-2022/map/useless.cpp

map/CMakeFiles/libmap.dir/useless.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libmap.dir/useless.cpp.i"
	cd /Users/celve/Repositories/Works/CMake-Demo-2022/build/map && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/celve/Repositories/Works/CMake-Demo-2022/map/useless.cpp > CMakeFiles/libmap.dir/useless.cpp.i

map/CMakeFiles/libmap.dir/useless.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libmap.dir/useless.cpp.s"
	cd /Users/celve/Repositories/Works/CMake-Demo-2022/build/map && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/celve/Repositories/Works/CMake-Demo-2022/map/useless.cpp -o CMakeFiles/libmap.dir/useless.cpp.s

# Object files for target libmap
libmap_OBJECTS = \
"CMakeFiles/libmap.dir/map.cpp.o" \
"CMakeFiles/libmap.dir/useless.cpp.o"

# External object files for target libmap
libmap_EXTERNAL_OBJECTS =

map/liblibmap.a: map/CMakeFiles/libmap.dir/map.cpp.o
map/liblibmap.a: map/CMakeFiles/libmap.dir/useless.cpp.o
map/liblibmap.a: map/CMakeFiles/libmap.dir/build.make
map/liblibmap.a: map/CMakeFiles/libmap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/celve/Repositories/Works/CMake-Demo-2022/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library liblibmap.a"
	cd /Users/celve/Repositories/Works/CMake-Demo-2022/build/map && $(CMAKE_COMMAND) -P CMakeFiles/libmap.dir/cmake_clean_target.cmake
	cd /Users/celve/Repositories/Works/CMake-Demo-2022/build/map && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libmap.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
map/CMakeFiles/libmap.dir/build: map/liblibmap.a
.PHONY : map/CMakeFiles/libmap.dir/build

map/CMakeFiles/libmap.dir/clean:
	cd /Users/celve/Repositories/Works/CMake-Demo-2022/build/map && $(CMAKE_COMMAND) -P CMakeFiles/libmap.dir/cmake_clean.cmake
.PHONY : map/CMakeFiles/libmap.dir/clean

map/CMakeFiles/libmap.dir/depend:
	cd /Users/celve/Repositories/Works/CMake-Demo-2022/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/celve/Repositories/Works/CMake-Demo-2022 /Users/celve/Repositories/Works/CMake-Demo-2022/map /Users/celve/Repositories/Works/CMake-Demo-2022/build /Users/celve/Repositories/Works/CMake-Demo-2022/build/map /Users/celve/Repositories/Works/CMake-Demo-2022/build/map/CMakeFiles/libmap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : map/CMakeFiles/libmap.dir/depend
