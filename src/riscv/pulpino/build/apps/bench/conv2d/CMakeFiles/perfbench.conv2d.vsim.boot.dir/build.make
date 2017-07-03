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

# Utility rule file for perfbench.conv2d.vsim.boot.

# Include the progress variables for this target.
include apps/bench/conv2d/CMakeFiles/perfbench.conv2d.vsim.boot.dir/progress.make

apps/bench/conv2d/CMakeFiles/perfbench.conv2d.vsim.boot:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running perfbench.conv2d in ModelSim"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/conv2d && /usr/bin/cmake -E remove stdout/*
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/conv2d && /usr/bin/cmake -E remove FS/*
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/conv2d && tcsh -c env\ PULP_CORE=riscv\ VSIM_DIR=/home/cairo/cernbox/GSOC2017/pulpino/vsim\ TB_TEST=""\ /opt/questasim/questasim/bin/vsim\ \ -64\ -do\ 'source\ tcl_files/run_boot.tcl\;'

perfbench.conv2d.vsim.boot: apps/bench/conv2d/CMakeFiles/perfbench.conv2d.vsim.boot
perfbench.conv2d.vsim.boot: apps/bench/conv2d/CMakeFiles/perfbench.conv2d.vsim.boot.dir/build.make

.PHONY : perfbench.conv2d.vsim.boot

# Rule to build all files generated by this target.
apps/bench/conv2d/CMakeFiles/perfbench.conv2d.vsim.boot.dir/build: perfbench.conv2d.vsim.boot

.PHONY : apps/bench/conv2d/CMakeFiles/perfbench.conv2d.vsim.boot.dir/build

apps/bench/conv2d/CMakeFiles/perfbench.conv2d.vsim.boot.dir/clean:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/conv2d && $(CMAKE_COMMAND) -P CMakeFiles/perfbench.conv2d.vsim.boot.dir/cmake_clean.cmake
.PHONY : apps/bench/conv2d/CMakeFiles/perfbench.conv2d.vsim.boot.dir/clean

apps/bench/conv2d/CMakeFiles/perfbench.conv2d.vsim.boot.dir/depend:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cairo/cernbox/GSOC2017/pulpino/sw /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/bench/conv2d /home/cairo/cernbox/GSOC2017/pulpino/build /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/conv2d /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/conv2d/CMakeFiles/perfbench.conv2d.vsim.boot.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/bench/conv2d/CMakeFiles/perfbench.conv2d.vsim.boot.dir/depend

