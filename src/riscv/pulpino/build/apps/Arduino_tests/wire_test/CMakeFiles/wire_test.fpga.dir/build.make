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

# Utility rule file for wire_test.fpga.

# Include the progress variables for this target.
include apps/Arduino_tests/wire_test/CMakeFiles/wire_test.fpga.dir/progress.make

apps/Arduino_tests/wire_test/CMakeFiles/wire_test.fpga:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running wire_test on FPGA"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/wire_test && /home/cairo/cernbox/GSOC2017/pulpino/sw/utils/run-on-fpga.sh wire_test

wire_test.fpga: apps/Arduino_tests/wire_test/CMakeFiles/wire_test.fpga
wire_test.fpga: apps/Arduino_tests/wire_test/CMakeFiles/wire_test.fpga.dir/build.make

.PHONY : wire_test.fpga

# Rule to build all files generated by this target.
apps/Arduino_tests/wire_test/CMakeFiles/wire_test.fpga.dir/build: wire_test.fpga

.PHONY : apps/Arduino_tests/wire_test/CMakeFiles/wire_test.fpga.dir/build

apps/Arduino_tests/wire_test/CMakeFiles/wire_test.fpga.dir/clean:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/wire_test && $(CMAKE_COMMAND) -P CMakeFiles/wire_test.fpga.dir/cmake_clean.cmake
.PHONY : apps/Arduino_tests/wire_test/CMakeFiles/wire_test.fpga.dir/clean

apps/Arduino_tests/wire_test/CMakeFiles/wire_test.fpga.dir/depend:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cairo/cernbox/GSOC2017/pulpino/sw /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/Arduino_tests/wire_test /home/cairo/cernbox/GSOC2017/pulpino/build /home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/wire_test /home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/wire_test/CMakeFiles/wire_test.fpga.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/Arduino_tests/wire_test/CMakeFiles/wire_test.fpga.dir/depend

