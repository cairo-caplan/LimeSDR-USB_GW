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

# Utility rule file for perfbench.ipm.links.

# Include the progress variables for this target.
include apps/bench/ipm/CMakeFiles/perfbench.ipm.links.dir/progress.make

apps/bench/ipm/CMakeFiles/perfbench.ipm.links: apps/bench/ipm/modelsim.ini
apps/bench/ipm/CMakeFiles/perfbench.ipm.links: apps/bench/ipm/work
apps/bench/ipm/CMakeFiles/perfbench.ipm.links: apps/bench/ipm/tcl_files
apps/bench/ipm/CMakeFiles/perfbench.ipm.links: apps/bench/ipm/waves


apps/bench/ipm/modelsim.ini:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating modelsim.ini"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/ipm && /usr/bin/cmake -E create_symlink /home/cairo/cernbox/GSOC2017/pulpino/vsim/modelsim.ini /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/ipm//modelsim.ini

apps/bench/ipm/work:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating work"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/ipm && /usr/bin/cmake -E create_symlink /home/cairo/cernbox/GSOC2017/pulpino/vsim/work /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/ipm//work

apps/bench/ipm/tcl_files:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating tcl_files"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/ipm && /usr/bin/cmake -E create_symlink /home/cairo/cernbox/GSOC2017/pulpino/vsim/tcl_files /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/ipm//tcl_files

apps/bench/ipm/waves:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating waves"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/ipm && /usr/bin/cmake -E create_symlink /home/cairo/cernbox/GSOC2017/pulpino/vsim/waves /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/ipm//waves

perfbench.ipm.links: apps/bench/ipm/CMakeFiles/perfbench.ipm.links
perfbench.ipm.links: apps/bench/ipm/modelsim.ini
perfbench.ipm.links: apps/bench/ipm/work
perfbench.ipm.links: apps/bench/ipm/tcl_files
perfbench.ipm.links: apps/bench/ipm/waves
perfbench.ipm.links: apps/bench/ipm/CMakeFiles/perfbench.ipm.links.dir/build.make

.PHONY : perfbench.ipm.links

# Rule to build all files generated by this target.
apps/bench/ipm/CMakeFiles/perfbench.ipm.links.dir/build: perfbench.ipm.links

.PHONY : apps/bench/ipm/CMakeFiles/perfbench.ipm.links.dir/build

apps/bench/ipm/CMakeFiles/perfbench.ipm.links.dir/clean:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/ipm && $(CMAKE_COMMAND) -P CMakeFiles/perfbench.ipm.links.dir/cmake_clean.cmake
.PHONY : apps/bench/ipm/CMakeFiles/perfbench.ipm.links.dir/clean

apps/bench/ipm/CMakeFiles/perfbench.ipm.links.dir/depend:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cairo/cernbox/GSOC2017/pulpino/sw /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/bench/ipm /home/cairo/cernbox/GSOC2017/pulpino/build /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/ipm /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/ipm/CMakeFiles/perfbench.ipm.links.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/bench/ipm/CMakeFiles/perfbench.ipm.links.dir/depend

