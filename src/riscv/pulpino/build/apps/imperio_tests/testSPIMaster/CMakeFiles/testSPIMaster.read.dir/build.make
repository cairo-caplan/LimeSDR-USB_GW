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

# Utility rule file for testSPIMaster.read.

# Include the progress variables for this target.
include apps/imperio_tests/testSPIMaster/CMakeFiles/testSPIMaster.read.dir/progress.make

testSPIMaster.read: apps/imperio_tests/testSPIMaster/CMakeFiles/testSPIMaster.read.dir/build.make
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/imperio_tests/testSPIMaster && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-objdump -Mmarch=IMXpulpv2 -d /home/cairo/cernbox/GSOC2017/pulpino/build/apps/imperio_tests/testSPIMaster/testSPIMaster.elf > testSPIMaster.read
.PHONY : testSPIMaster.read

# Rule to build all files generated by this target.
apps/imperio_tests/testSPIMaster/CMakeFiles/testSPIMaster.read.dir/build: testSPIMaster.read

.PHONY : apps/imperio_tests/testSPIMaster/CMakeFiles/testSPIMaster.read.dir/build

apps/imperio_tests/testSPIMaster/CMakeFiles/testSPIMaster.read.dir/clean:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/imperio_tests/testSPIMaster && $(CMAKE_COMMAND) -P CMakeFiles/testSPIMaster.read.dir/cmake_clean.cmake
.PHONY : apps/imperio_tests/testSPIMaster/CMakeFiles/testSPIMaster.read.dir/clean

apps/imperio_tests/testSPIMaster/CMakeFiles/testSPIMaster.read.dir/depend:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cairo/cernbox/GSOC2017/pulpino/sw /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/imperio_tests/testSPIMaster /home/cairo/cernbox/GSOC2017/pulpino/build /home/cairo/cernbox/GSOC2017/pulpino/build/apps/imperio_tests/testSPIMaster /home/cairo/cernbox/GSOC2017/pulpino/build/apps/imperio_tests/testSPIMaster/CMakeFiles/testSPIMaster.read.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/imperio_tests/testSPIMaster/CMakeFiles/testSPIMaster.read.dir/depend

