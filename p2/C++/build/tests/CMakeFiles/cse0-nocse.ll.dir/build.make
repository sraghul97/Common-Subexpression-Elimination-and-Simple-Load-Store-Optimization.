# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /ece566/projects/p2/C++

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /ece566/projects/p2/C++/build

# Utility rule file for cse0-nocse.ll.

# Include any custom commands dependencies for this target.
include tests/CMakeFiles/cse0-nocse.ll.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/cse0-nocse.ll.dir/progress.make

tests/CMakeFiles/cse0-nocse.ll: p2
	cd /ece566/projects/p2/C++/build/tests && /usr/bin/llvm-dis-17 cse0-nocse.bc

cse0-nocse.ll: tests/CMakeFiles/cse0-nocse.ll
cse0-nocse.ll: tests/CMakeFiles/cse0-nocse.ll.dir/build.make
.PHONY : cse0-nocse.ll

# Rule to build all files generated by this target.
tests/CMakeFiles/cse0-nocse.ll.dir/build: cse0-nocse.ll
.PHONY : tests/CMakeFiles/cse0-nocse.ll.dir/build

tests/CMakeFiles/cse0-nocse.ll.dir/clean:
	cd /ece566/projects/p2/C++/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/cse0-nocse.ll.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/cse0-nocse.ll.dir/clean

tests/CMakeFiles/cse0-nocse.ll.dir/depend:
	cd /ece566/projects/p2/C++/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /ece566/projects/p2/C++ /ece566/projects/p2/C++/tests /ece566/projects/p2/C++/build /ece566/projects/p2/C++/build/tests /ece566/projects/p2/C++/build/tests/CMakeFiles/cse0-nocse.ll.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests/CMakeFiles/cse0-nocse.ll.dir/depend

