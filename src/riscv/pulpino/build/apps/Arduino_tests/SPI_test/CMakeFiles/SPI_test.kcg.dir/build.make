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

# Utility rule file for SPI_test.kcg.

# Include the progress variables for this target.
include apps/Arduino_tests/SPI_test/CMakeFiles/SPI_test.kcg.dir/progress.make

apps/Arduino_tests/SPI_test/CMakeFiles/SPI_test.kcg:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/SPI_test && pulp-pc-analyze --rtl --input=trace_core_00.log --binary=SPI_test.elf
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/SPI_test && kcachegrind kcg.txt

SPI_test.kcg: apps/Arduino_tests/SPI_test/CMakeFiles/SPI_test.kcg
SPI_test.kcg: apps/Arduino_tests/SPI_test/CMakeFiles/SPI_test.kcg.dir/build.make

.PHONY : SPI_test.kcg

# Rule to build all files generated by this target.
apps/Arduino_tests/SPI_test/CMakeFiles/SPI_test.kcg.dir/build: SPI_test.kcg

.PHONY : apps/Arduino_tests/SPI_test/CMakeFiles/SPI_test.kcg.dir/build

apps/Arduino_tests/SPI_test/CMakeFiles/SPI_test.kcg.dir/clean:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/SPI_test && $(CMAKE_COMMAND) -P CMakeFiles/SPI_test.kcg.dir/cmake_clean.cmake
.PHONY : apps/Arduino_tests/SPI_test/CMakeFiles/SPI_test.kcg.dir/clean

apps/Arduino_tests/SPI_test/CMakeFiles/SPI_test.kcg.dir/depend:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cairo/cernbox/GSOC2017/pulpino/sw /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/Arduino_tests/SPI_test /home/cairo/cernbox/GSOC2017/pulpino/build /home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/SPI_test /home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/SPI_test/CMakeFiles/SPI_test.kcg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/Arduino_tests/SPI_test/CMakeFiles/SPI_test.kcg.dir/depend

