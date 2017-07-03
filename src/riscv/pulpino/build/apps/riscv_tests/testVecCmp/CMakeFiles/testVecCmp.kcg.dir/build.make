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

# Utility rule file for testVecCmp.kcg.

# Include the progress variables for this target.
include apps/riscv_tests/testVecCmp/CMakeFiles/testVecCmp.kcg.dir/progress.make

apps/riscv_tests/testVecCmp/CMakeFiles/testVecCmp.kcg:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/testVecCmp && pulp-pc-analyze --rtl --input=trace_core_00.log --binary=testVecCmp.elf
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/testVecCmp && kcachegrind kcg.txt

testVecCmp.kcg: apps/riscv_tests/testVecCmp/CMakeFiles/testVecCmp.kcg
testVecCmp.kcg: apps/riscv_tests/testVecCmp/CMakeFiles/testVecCmp.kcg.dir/build.make

.PHONY : testVecCmp.kcg

# Rule to build all files generated by this target.
apps/riscv_tests/testVecCmp/CMakeFiles/testVecCmp.kcg.dir/build: testVecCmp.kcg

.PHONY : apps/riscv_tests/testVecCmp/CMakeFiles/testVecCmp.kcg.dir/build

apps/riscv_tests/testVecCmp/CMakeFiles/testVecCmp.kcg.dir/clean:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/testVecCmp && $(CMAKE_COMMAND) -P CMakeFiles/testVecCmp.kcg.dir/cmake_clean.cmake
.PHONY : apps/riscv_tests/testVecCmp/CMakeFiles/testVecCmp.kcg.dir/clean

apps/riscv_tests/testVecCmp/CMakeFiles/testVecCmp.kcg.dir/depend:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cairo/cernbox/GSOC2017/pulpino/sw /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/riscv_tests/testVecCmp /home/cairo/cernbox/GSOC2017/pulpino/build /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/testVecCmp /home/cairo/cernbox/GSOC2017/pulpino/build/apps/riscv_tests/testVecCmp/CMakeFiles/testVecCmp.kcg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/riscv_tests/testVecCmp/CMakeFiles/testVecCmp.kcg.dir/depend

