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

# Utility rule file for testUART.vsim.spi.

# Include the progress variables for this target.
include apps/imperio_tests/testUART/CMakeFiles/testUART.vsim.spi.dir/progress.make

apps/imperio_tests/testUART/CMakeFiles/testUART.vsim.spi:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running testUART in ModelSim"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/imperio_tests/testUART && /usr/bin/cmake -E remove stdout/*
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/imperio_tests/testUART && /usr/bin/cmake -E remove FS/*
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/imperio_tests/testUART && tcsh -c env\ PULP_CORE=riscv\ VSIM_DIR=/home/cairo/cernbox/GSOC2017/pulpino/vsim\ TB_TEST=""\ /opt/questasim/questasim/bin/vsim\ \ -64\ -do\ 'source\ tcl_files/run_spi.tcl\;'

testUART.vsim.spi: apps/imperio_tests/testUART/CMakeFiles/testUART.vsim.spi
testUART.vsim.spi: apps/imperio_tests/testUART/CMakeFiles/testUART.vsim.spi.dir/build.make

.PHONY : testUART.vsim.spi

# Rule to build all files generated by this target.
apps/imperio_tests/testUART/CMakeFiles/testUART.vsim.spi.dir/build: testUART.vsim.spi

.PHONY : apps/imperio_tests/testUART/CMakeFiles/testUART.vsim.spi.dir/build

apps/imperio_tests/testUART/CMakeFiles/testUART.vsim.spi.dir/clean:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/imperio_tests/testUART && $(CMAKE_COMMAND) -P CMakeFiles/testUART.vsim.spi.dir/cmake_clean.cmake
.PHONY : apps/imperio_tests/testUART/CMakeFiles/testUART.vsim.spi.dir/clean

apps/imperio_tests/testUART/CMakeFiles/testUART.vsim.spi.dir/depend:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cairo/cernbox/GSOC2017/pulpino/sw /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/imperio_tests/testUART /home/cairo/cernbox/GSOC2017/pulpino/build /home/cairo/cernbox/GSOC2017/pulpino/build/apps/imperio_tests/testUART /home/cairo/cernbox/GSOC2017/pulpino/build/apps/imperio_tests/testUART/CMakeFiles/testUART.vsim.spi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/imperio_tests/testUART/CMakeFiles/testUART.vsim.spi.dir/depend

