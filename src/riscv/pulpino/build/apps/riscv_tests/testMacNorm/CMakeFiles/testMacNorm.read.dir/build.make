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

# Utility rule file for testMacNorm.read.

# Include the progress variables for this target.
include apps/riscv_tests/testMacNorm/CMakeFiles/testMacNorm.read.dir/progress.make

testMacNorm.read: apps/riscv_tests/testMacNorm/CMakeFiles/testMacNorm.read.dir/build.make
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/testMacNorm && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-objdump -Mmarch=IMXpulpv2 -d /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/testMacNorm/testMacNorm.elf > testMacNorm.read
.PHONY : testMacNorm.read

# Rule to build all files generated by this target.
apps/riscv_tests/testMacNorm/CMakeFiles/testMacNorm.read.dir/build: testMacNorm.read

.PHONY : apps/riscv_tests/testMacNorm/CMakeFiles/testMacNorm.read.dir/build

apps/riscv_tests/testMacNorm/CMakeFiles/testMacNorm.read.dir/clean:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/testMacNorm && $(CMAKE_COMMAND) -P CMakeFiles/testMacNorm.read.dir/cmake_clean.cmake
.PHONY : apps/riscv_tests/testMacNorm/CMakeFiles/testMacNorm.read.dir/clean

apps/riscv_tests/testMacNorm/CMakeFiles/testMacNorm.read.dir/depend:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cairo/cernbox/GSOC2017/pulpino/sw /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/riscv_tests/testMacNorm /home/cairo/cernbox/GSOC2017/pulpino/build /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/testMacNorm /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/testMacNorm/CMakeFiles/testMacNorm.read.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/riscv_tests/testMacNorm/CMakeFiles/testMacNorm.read.dir/depend

