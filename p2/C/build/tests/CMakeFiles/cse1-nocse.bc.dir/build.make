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
CMAKE_SOURCE_DIR = /ece566/projects/p2/C

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /ece566/projects/p2/C/build

# Utility rule file for cse1-nocse.bc.

# Include any custom commands dependencies for this target.
include tests/CMakeFiles/cse1-nocse.bc.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/cse1-nocse.bc.dir/progress.make

tests/CMakeFiles/cse1-nocse.bc: p2
tests/CMakeFiles/cse1-nocse.bc: /ece566/projects/p2/C/tests/cse1.ll
	cd /ece566/projects/p2/C/build/tests && /ece566/projects/p2/C/build/p2 -verbose -no-cse /ece566/projects/p2/C/tests/cse1.ll cse1-nocse.bc

cse1-nocse.bc: tests/CMakeFiles/cse1-nocse.bc
cse1-nocse.bc: tests/CMakeFiles/cse1-nocse.bc.dir/build.make
.PHONY : cse1-nocse.bc

# Rule to build all files generated by this target.
tests/CMakeFiles/cse1-nocse.bc.dir/build: cse1-nocse.bc
.PHONY : tests/CMakeFiles/cse1-nocse.bc.dir/build

tests/CMakeFiles/cse1-nocse.bc.dir/clean:
	cd /ece566/projects/p2/C/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/cse1-nocse.bc.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/cse1-nocse.bc.dir/clean

tests/CMakeFiles/cse1-nocse.bc.dir/depend:
	cd /ece566/projects/p2/C/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /ece566/projects/p2/C /ece566/projects/p2/C/tests /ece566/projects/p2/C/build /ece566/projects/p2/C/build/tests /ece566/projects/p2/C/build/tests/CMakeFiles/cse1-nocse.bc.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests/CMakeFiles/cse1-nocse.bc.dir/depend

