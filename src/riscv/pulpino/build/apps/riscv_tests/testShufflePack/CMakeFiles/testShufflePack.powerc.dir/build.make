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

# Utility rule file for testShufflePack.powerc.

# Include the progress variables for this target.
include apps/riscv_tests/testShufflePack/CMakeFiles/testShufflePack.powerc.dir/progress.make

apps/riscv_tests/testShufflePack/CMakeFiles/testShufflePack.powerc:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running testShufflePack in ModelSim (post layout)"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/testShufflePack && /usr/bin/cmake -E remove stdout/*
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/testShufflePack && /usr/bin/cmake -E remove FS/*
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/testShufflePack && tcsh -c env\ PULP_CORE=riscv\ VSIM_DIR=/home/cairo/cernbox/GSOC2017/pulpino/vsim\ TB_TEST=""\ /opt/questasim/questasim/bin/vsim\ \ -c\ -64\ -do\ 'source\ tcl_files/run_power.tcl\;\ run\ -a\;\ exit'

testShufflePack.powerc: apps/riscv_tests/testShufflePack/CMakeFiles/testShufflePack.powerc
testShufflePack.powerc: apps/riscv_tests/testShufflePack/CMakeFiles/testShufflePack.powerc.dir/build.make

.PHONY : testShufflePack.powerc

# Rule to build all files generated by this target.
apps/riscv_tests/testShufflePack/CMakeFiles/testShufflePack.powerc.dir/build: testShufflePack.powerc

.PHONY : apps/riscv_tests/testShufflePack/CMakeFiles/testShufflePack.powerc.dir/build

apps/riscv_tests/testShufflePack/CMakeFiles/testShufflePack.powerc.dir/clean:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/testShufflePack && $(CMAKE_COMMAND) -P CMakeFiles/testShufflePack.powerc.dir/cmake_clean.cmake
.PHONY : apps/riscv_tests/testShufflePack/CMakeFiles/testShufflePack.powerc.dir/clean

apps/riscv_tests/testShufflePack/CMakeFiles/testShufflePack.powerc.dir/depend:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cairo/cernbox/GSOC2017/pulpino/sw /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/riscv_tests/testShufflePack /home/cairo/cernbox/GSOC2017/pulpino/build /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/testShufflePack /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/testShufflePack/CMakeFiles/testShufflePack.powerc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/riscv_tests/testShufflePack/CMakeFiles/testShufflePack.powerc.dir/depend

