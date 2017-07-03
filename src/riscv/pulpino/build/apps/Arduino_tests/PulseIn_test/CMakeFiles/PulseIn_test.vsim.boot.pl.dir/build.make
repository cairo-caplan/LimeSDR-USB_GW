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

# Utility rule file for PulseIn_test.vsim.boot.pl.

# Include the progress variables for this target.
include apps/Arduino_tests/PulseIn_test/CMakeFiles/PulseIn_test.vsim.boot.pl.dir/progress.make

apps/Arduino_tests/PulseIn_test/CMakeFiles/PulseIn_test.vsim.boot.pl:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running PulseIn_test in ModelSim (post layout)"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/PulseIn_test && /usr/bin/cmake -E remove stdout/*
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/PulseIn_test && /usr/bin/cmake -E remove FS/*
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/PulseIn_test && tcsh -c env\ PULP_CORE=riscv\ VSIM_DIR=/home/cairo/cernbox/GSOC2017/pulpino/vsim\ TB_TEST="ARDUINO_PULSEIN"\ /opt/questasim/questasim/bin/vsim\ \ -64\ -do\ 'source\ tcl_files/run_boot_pl.tcl\;'

PulseIn_test.vsim.boot.pl: apps/Arduino_tests/PulseIn_test/CMakeFiles/PulseIn_test.vsim.boot.pl
PulseIn_test.vsim.boot.pl: apps/Arduino_tests/PulseIn_test/CMakeFiles/PulseIn_test.vsim.boot.pl.dir/build.make

.PHONY : PulseIn_test.vsim.boot.pl

# Rule to build all files generated by this target.
apps/Arduino_tests/PulseIn_test/CMakeFiles/PulseIn_test.vsim.boot.pl.dir/build: PulseIn_test.vsim.boot.pl

.PHONY : apps/Arduino_tests/PulseIn_test/CMakeFiles/PulseIn_test.vsim.boot.pl.dir/build

apps/Arduino_tests/PulseIn_test/CMakeFiles/PulseIn_test.vsim.boot.pl.dir/clean:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/PulseIn_test && $(CMAKE_COMMAND) -P CMakeFiles/PulseIn_test.vsim.boot.pl.dir/cmake_clean.cmake
.PHONY : apps/Arduino_tests/PulseIn_test/CMakeFiles/PulseIn_test.vsim.boot.pl.dir/clean

apps/Arduino_tests/PulseIn_test/CMakeFiles/PulseIn_test.vsim.boot.pl.dir/depend:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cairo/cernbox/GSOC2017/pulpino/sw /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/Arduino_tests/PulseIn_test /home/cairo/cernbox/GSOC2017/pulpino/build /home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/PulseIn_test /home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/PulseIn_test/CMakeFiles/PulseIn_test.vsim.boot.pl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/Arduino_tests/PulseIn_test/CMakeFiles/PulseIn_test.vsim.boot.pl.dir/depend

