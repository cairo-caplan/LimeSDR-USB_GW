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

# Utility rule file for perfbench.ipm.stim.txt.

# Include the progress variables for this target.
include apps/bench/ipm/CMakeFiles/perfbench.ipm.stim.txt.dir/progress.make

apps/bench/ipm/CMakeFiles/perfbench.ipm.stim.txt: apps/bench/ipm/vectors/stim.txt


apps/bench/ipm/vectors/stim.txt: apps/bench/ipm/perfbench.ipm.s19
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating vectors/stim.txt"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/ipm && /home/cairo/cernbox/GSOC2017/pulpino/sw/utils/parse_s19.pl ./perfbench.ipm.s19 > ./vectors/stim.txt

apps/bench/ipm/perfbench.ipm.s19: apps/bench/ipm/perfbench.ipm.elf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating perfbench.ipm.s19"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/ipm && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-objcopy --srec-len 1 --output-target=srec /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/ipm/perfbench.ipm.elf perfbench.ipm.s19

perfbench.ipm.stim.txt: apps/bench/ipm/CMakeFiles/perfbench.ipm.stim.txt
perfbench.ipm.stim.txt: apps/bench/ipm/vectors/stim.txt
perfbench.ipm.stim.txt: apps/bench/ipm/perfbench.ipm.s19
perfbench.ipm.stim.txt: apps/bench/ipm/CMakeFiles/perfbench.ipm.stim.txt.dir/build.make

.PHONY : perfbench.ipm.stim.txt

# Rule to build all files generated by this target.
apps/bench/ipm/CMakeFiles/perfbench.ipm.stim.txt.dir/build: perfbench.ipm.stim.txt

.PHONY : apps/bench/ipm/CMakeFiles/perfbench.ipm.stim.txt.dir/build

apps/bench/ipm/CMakeFiles/perfbench.ipm.stim.txt.dir/clean:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/ipm && $(CMAKE_COMMAND) -P CMakeFiles/perfbench.ipm.stim.txt.dir/cmake_clean.cmake
.PHONY : apps/bench/ipm/CMakeFiles/perfbench.ipm.stim.txt.dir/clean

apps/bench/ipm/CMakeFiles/perfbench.ipm.stim.txt.dir/depend:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cairo/cernbox/GSOC2017/pulpino/sw /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/bench/ipm /home/cairo/cernbox/GSOC2017/pulpino/build /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/ipm /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/ipm/CMakeFiles/perfbench.ipm.stim.txt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/bench/ipm/CMakeFiles/perfbench.ipm.stim.txt.dir/depend

