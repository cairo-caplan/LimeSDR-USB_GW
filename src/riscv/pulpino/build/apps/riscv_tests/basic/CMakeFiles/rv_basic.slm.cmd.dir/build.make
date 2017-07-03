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

# Utility rule file for rv_basic.slm.cmd.

# Include the progress variables for this target.
include apps/riscv_tests/basic/CMakeFiles/rv_basic.slm.cmd.dir/progress.make

apps/riscv_tests/basic/CMakeFiles/rv_basic.slm.cmd: apps/riscv_tests/basic/slm_files/l2_ram.slm


apps/riscv_tests/basic/slm_files/l2_ram.slm: apps/riscv_tests/basic/rv_basic.s19
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating slm_files/l2_ram.slm"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/basic/slm_files && /home/cairo/cernbox/GSOC2017/pulpino/sw/utils/s19toslm.py ../rv_basic.s19
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/basic/slm_files && /usr/bin/cmake -E touch l2_ram.slm

apps/riscv_tests/basic/rv_basic.s19: apps/riscv_tests/basic/rv_basic.elf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating rv_basic.s19"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/basic && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-objcopy --srec-len 1 --output-target=srec /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/basic/rv_basic.elf rv_basic.s19

rv_basic.slm.cmd: apps/riscv_tests/basic/CMakeFiles/rv_basic.slm.cmd
rv_basic.slm.cmd: apps/riscv_tests/basic/slm_files/l2_ram.slm
rv_basic.slm.cmd: apps/riscv_tests/basic/rv_basic.s19
rv_basic.slm.cmd: apps/riscv_tests/basic/CMakeFiles/rv_basic.slm.cmd.dir/build.make

.PHONY : rv_basic.slm.cmd

# Rule to build all files generated by this target.
apps/riscv_tests/basic/CMakeFiles/rv_basic.slm.cmd.dir/build: rv_basic.slm.cmd

.PHONY : apps/riscv_tests/basic/CMakeFiles/rv_basic.slm.cmd.dir/build

apps/riscv_tests/basic/CMakeFiles/rv_basic.slm.cmd.dir/clean:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/basic && $(CMAKE_COMMAND) -P CMakeFiles/rv_basic.slm.cmd.dir/cmake_clean.cmake
.PHONY : apps/riscv_tests/basic/CMakeFiles/rv_basic.slm.cmd.dir/clean

apps/riscv_tests/basic/CMakeFiles/rv_basic.slm.cmd.dir/depend:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cairo/cernbox/GSOC2017/pulpino/sw /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/riscv_tests/basic /home/cairo/cernbox/GSOC2017/pulpino/build /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/basic /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/basic/CMakeFiles/rv_basic.slm.cmd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/riscv_tests/basic/CMakeFiles/rv_basic.slm.cmd.dir/depend

