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

# Utility rule file for perfbench.fdctfst.slm.cmd.

# Include the progress variables for this target.
include apps/bench/fdctfst/CMakeFiles/perfbench.fdctfst.slm.cmd.dir/progress.make

apps/bench/fdctfst/CMakeFiles/perfbench.fdctfst.slm.cmd: apps/bench/fdctfst/slm_files/l2_ram.slm


apps/bench/fdctfst/slm_files/l2_ram.slm: apps/bench/fdctfst/perfbench.fdctfst.s19
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating slm_files/l2_ram.slm"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/fdctfst/slm_files && /home/cairo/cernbox/GSOC2017/pulpino/sw/utils/s19toslm.py ../perfbench.fdctfst.s19
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/fdctfst/slm_files && /usr/bin/cmake -E touch l2_ram.slm

apps/bench/fdctfst/perfbench.fdctfst.s19: apps/bench/fdctfst/perfbench.fdctfst.elf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating perfbench.fdctfst.s19"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/fdctfst && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-objcopy --srec-len 1 --output-target=srec /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/fdctfst/perfbench.fdctfst.elf perfbench.fdctfst.s19

perfbench.fdctfst.slm.cmd: apps/bench/fdctfst/CMakeFiles/perfbench.fdctfst.slm.cmd
perfbench.fdctfst.slm.cmd: apps/bench/fdctfst/slm_files/l2_ram.slm
perfbench.fdctfst.slm.cmd: apps/bench/fdctfst/perfbench.fdctfst.s19
perfbench.fdctfst.slm.cmd: apps/bench/fdctfst/CMakeFiles/perfbench.fdctfst.slm.cmd.dir/build.make

.PHONY : perfbench.fdctfst.slm.cmd

# Rule to build all files generated by this target.
apps/bench/fdctfst/CMakeFiles/perfbench.fdctfst.slm.cmd.dir/build: perfbench.fdctfst.slm.cmd

.PHONY : apps/bench/fdctfst/CMakeFiles/perfbench.fdctfst.slm.cmd.dir/build

apps/bench/fdctfst/CMakeFiles/perfbench.fdctfst.slm.cmd.dir/clean:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/fdctfst && $(CMAKE_COMMAND) -P CMakeFiles/perfbench.fdctfst.slm.cmd.dir/cmake_clean.cmake
.PHONY : apps/bench/fdctfst/CMakeFiles/perfbench.fdctfst.slm.cmd.dir/clean

apps/bench/fdctfst/CMakeFiles/perfbench.fdctfst.slm.cmd.dir/depend:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cairo/cernbox/GSOC2017/pulpino/sw /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/bench/fdctfst /home/cairo/cernbox/GSOC2017/pulpino/build /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/fdctfst /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/fdctfst/CMakeFiles/perfbench.fdctfst.slm.cmd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/bench/fdctfst/CMakeFiles/perfbench.fdctfst.slm.cmd.dir/depend

