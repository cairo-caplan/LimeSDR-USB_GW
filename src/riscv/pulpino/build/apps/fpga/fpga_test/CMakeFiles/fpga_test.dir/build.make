# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cairo/cernbox/GSOC2017/pulpino/sw

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cairo/cernbox/GSOC2017/pulpino/build

# Utility rule file for fpga_test.

# Include the progress variables for this target.
include apps/fpga/fpga_test/CMakeFiles/fpga_test.dir/progress.make

apps/fpga/fpga_test/CMakeFiles/fpga_test:


fpga_test: apps/fpga/fpga_test/CMakeFiles/fpga_test
fpga_test: apps/fpga/fpga_test/CMakeFiles/fpga_test.dir/build.make

.PHONY : fpga_test

# Rule to build all files generated by this target.
apps/fpga/fpga_test/CMakeFiles/fpga_test.dir/build: fpga_test

.PHONY : apps/fpga/fpga_test/CMakeFiles/fpga_test.dir/build

apps/fpga/fpga_test/CMakeFiles/fpga_test.dir/clean:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/fpga/fpga_test && $(CMAKE_COMMAND) -P CMakeFiles/fpga_test.dir/cmake_clean.cmake
.PHONY : apps/fpga/fpga_test/CMakeFiles/fpga_test.dir/clean

apps/fpga/fpga_test/CMakeFiles/fpga_test.dir/depend:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cairo/cernbox/GSOC2017/pulpino/sw /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/fpga/fpga_test /home/cairo/cernbox/GSOC2017/pulpino/build /home/cairo/cernbox/GSOC2017/pulpino/build/apps/fpga/fpga_test /home/cairo/cernbox/GSOC2017/pulpino/build/apps/fpga/fpga_test/CMakeFiles/fpga_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/fpga/fpga_test/CMakeFiles/fpga_test.dir/depend

