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

# Utility rule file for matrixMul16_dotp.s19.cmd.

# Include the progress variables for this target.
include apps/sequential_tests/matrixMul16_dotp/CMakeFiles/matrixMul16_dotp.s19.cmd.dir/progress.make

apps/sequential_tests/matrixMul16_dotp/CMakeFiles/matrixMul16_dotp.s19.cmd: apps/sequential_tests/matrixMul16_dotp/matrixMul16_dotp.s19


apps/sequential_tests/matrixMul16_dotp/matrixMul16_dotp.s19: apps/sequential_tests/matrixMul16_dotp/matrixMul16_dotp.elf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating matrixMul16_dotp.s19"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/sequential_tests/matrixMul16_dotp && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-objcopy --srec-len 1 --output-target=srec /home/cairo/cernbox/GSOC2017/pulpino/build/apps/sequential_tests/matrixMul16_dotp/matrixMul16_dotp.elf matrixMul16_dotp.s19

matrixMul16_dotp.s19.cmd: apps/sequential_tests/matrixMul16_dotp/CMakeFiles/matrixMul16_dotp.s19.cmd
matrixMul16_dotp.s19.cmd: apps/sequential_tests/matrixMul16_dotp/matrixMul16_dotp.s19
matrixMul16_dotp.s19.cmd: apps/sequential_tests/matrixMul16_dotp/CMakeFiles/matrixMul16_dotp.s19.cmd.dir/build.make

.PHONY : matrixMul16_dotp.s19.cmd

# Rule to build all files generated by this target.
apps/sequential_tests/matrixMul16_dotp/CMakeFiles/matrixMul16_dotp.s19.cmd.dir/build: matrixMul16_dotp.s19.cmd

.PHONY : apps/sequential_tests/matrixMul16_dotp/CMakeFiles/matrixMul16_dotp.s19.cmd.dir/build

apps/sequential_tests/matrixMul16_dotp/CMakeFiles/matrixMul16_dotp.s19.cmd.dir/clean:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/sequential_tests/matrixMul16_dotp && $(CMAKE_COMMAND) -P CMakeFiles/matrixMul16_dotp.s19.cmd.dir/cmake_clean.cmake
.PHONY : apps/sequential_tests/matrixMul16_dotp/CMakeFiles/matrixMul16_dotp.s19.cmd.dir/clean

apps/sequential_tests/matrixMul16_dotp/CMakeFiles/matrixMul16_dotp.s19.cmd.dir/depend:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cairo/cernbox/GSOC2017/pulpino/sw /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/sequential_tests/matrixMul16_dotp /home/cairo/cernbox/GSOC2017/pulpino/build /home/cairo/cernbox/GSOC2017/pulpino/build/apps/sequential_tests/matrixMul16_dotp /home/cairo/cernbox/GSOC2017/pulpino/build/apps/sequential_tests/matrixMul16_dotp/CMakeFiles/matrixMul16_dotp.s19.cmd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/sequential_tests/matrixMul16_dotp/CMakeFiles/matrixMul16_dotp.s19.cmd.dir/depend

