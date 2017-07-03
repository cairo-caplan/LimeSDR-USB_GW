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

# Utility rule file for helloworldcpp.vsim.spi.ps.

# Include the progress variables for this target.
include apps/helloworld/CMakeFiles/helloworldcpp.vsim.spi.ps.dir/progress.make

apps/helloworld/CMakeFiles/helloworldcpp.vsim.spi.ps:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running helloworldcpp in ModelSim (post synthesis)"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/helloworldcpp && /usr/bin/cmake -E remove stdout/*
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/helloworldcpp && /usr/bin/cmake -E remove FS/*
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/helloworldcpp && tcsh -c env\ PULP_CORE=riscv\ VSIM_DIR=/home/cairo/cernbox/GSOC2017/pulpino/vsim\ TB_TEST=""\ /opt/questasim/questasim/bin/vsim\ \ -64\ -do\ 'source\ tcl_files/run_spi_ps.tcl\;'

helloworldcpp.vsim.spi.ps: apps/helloworld/CMakeFiles/helloworldcpp.vsim.spi.ps
helloworldcpp.vsim.spi.ps: apps/helloworld/CMakeFiles/helloworldcpp.vsim.spi.ps.dir/build.make

.PHONY : helloworldcpp.vsim.spi.ps

# Rule to build all files generated by this target.
apps/helloworld/CMakeFiles/helloworldcpp.vsim.spi.ps.dir/build: helloworldcpp.vsim.spi.ps

.PHONY : apps/helloworld/CMakeFiles/helloworldcpp.vsim.spi.ps.dir/build

apps/helloworld/CMakeFiles/helloworldcpp.vsim.spi.ps.dir/clean:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/helloworld && $(CMAKE_COMMAND) -P CMakeFiles/helloworldcpp.vsim.spi.ps.dir/cmake_clean.cmake
.PHONY : apps/helloworld/CMakeFiles/helloworldcpp.vsim.spi.ps.dir/clean

apps/helloworld/CMakeFiles/helloworldcpp.vsim.spi.ps.dir/depend:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cairo/cernbox/GSOC2017/pulpino/sw /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/helloworld /home/cairo/cernbox/GSOC2017/pulpino/build /home/cairo/cernbox/GSOC2017/pulpino/build/apps/helloworld /home/cairo/cernbox/GSOC2017/pulpino/build/apps/helloworld/CMakeFiles/helloworldcpp.vsim.spi.ps.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/helloworld/CMakeFiles/helloworldcpp.vsim.spi.ps.dir/depend

