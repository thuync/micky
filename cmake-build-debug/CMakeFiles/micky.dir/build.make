# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/thuync/Labs/micky

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/thuync/Labs/micky/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/micky.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/micky.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/micky.dir/flags.make

CMakeFiles/micky.dir/library.cpp.o: CMakeFiles/micky.dir/flags.make
CMakeFiles/micky.dir/library.cpp.o: ../library.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/thuync/Labs/micky/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/micky.dir/library.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/micky.dir/library.cpp.o -c /Users/thuync/Labs/micky/library.cpp

CMakeFiles/micky.dir/library.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/micky.dir/library.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/thuync/Labs/micky/library.cpp > CMakeFiles/micky.dir/library.cpp.i

CMakeFiles/micky.dir/library.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/micky.dir/library.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/thuync/Labs/micky/library.cpp -o CMakeFiles/micky.dir/library.cpp.s

CMakeFiles/micky.dir/library.cpp.o.requires:

.PHONY : CMakeFiles/micky.dir/library.cpp.o.requires

CMakeFiles/micky.dir/library.cpp.o.provides: CMakeFiles/micky.dir/library.cpp.o.requires
	$(MAKE) -f CMakeFiles/micky.dir/build.make CMakeFiles/micky.dir/library.cpp.o.provides.build
.PHONY : CMakeFiles/micky.dir/library.cpp.o.provides

CMakeFiles/micky.dir/library.cpp.o.provides.build: CMakeFiles/micky.dir/library.cpp.o


# Object files for target micky
micky_OBJECTS = \
"CMakeFiles/micky.dir/library.cpp.o"

# External object files for target micky
micky_EXTERNAL_OBJECTS =

libmicky.a: CMakeFiles/micky.dir/library.cpp.o
libmicky.a: CMakeFiles/micky.dir/build.make
libmicky.a: CMakeFiles/micky.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/thuync/Labs/micky/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libmicky.a"
	$(CMAKE_COMMAND) -P CMakeFiles/micky.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/micky.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/micky.dir/build: libmicky.a

.PHONY : CMakeFiles/micky.dir/build

CMakeFiles/micky.dir/requires: CMakeFiles/micky.dir/library.cpp.o.requires

.PHONY : CMakeFiles/micky.dir/requires

CMakeFiles/micky.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/micky.dir/cmake_clean.cmake
.PHONY : CMakeFiles/micky.dir/clean

CMakeFiles/micky.dir/depend:
	cd /Users/thuync/Labs/micky/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/thuync/Labs/micky /Users/thuync/Labs/micky /Users/thuync/Labs/micky/cmake-build-debug /Users/thuync/Labs/micky/cmake-build-debug /Users/thuync/Labs/micky/cmake-build-debug/CMakeFiles/micky.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/micky.dir/depend

