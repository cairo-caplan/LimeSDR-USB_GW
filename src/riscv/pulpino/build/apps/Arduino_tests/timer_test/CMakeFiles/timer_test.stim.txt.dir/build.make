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

# Utility rule file for timer_test.stim.txt.

# Include the progress variables for this target.
include apps/Arduino_tests/timer_test/CMakeFiles/timer_test.stim.txt.dir/progress.make

apps/Arduino_tests/timer_test/CMakeFiles/timer_test.stim.txt: apps/Arduino_tests/timer_test/vectors/stim.txt


apps/Arduino_tests/timer_test/vectors/stim.txt: apps/Arduino_tests/timer_test/timer_test.s19
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating vectors/stim.txt"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/timer_test && /home/cairo/cernbox/GSOC2017/pulpino/sw/utils/parse_s19.pl ./timer_test.s19 > ./vectors/stim.txt

apps/Arduino_tests/timer_test/timer_test.s19: apps/Arduino_tests/timer_test/timer_test.elf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating timer_test.s19"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/timer_test && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-objcopy --srec-len 1 --output-target=srec /home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/timer_test/timer_test.elf timer_test.s19

timer_test.stim.txt: apps/Arduino_tests/timer_test/CMakeFiles/timer_test.stim.txt
timer_test.stim.txt: apps/Arduino_tests/timer_test/vectors/stim.txt
timer_test.stim.txt: apps/Arduino_tests/timer_test/timer_test.s19
timer_test.stim.txt: apps/Arduino_tests/timer_test/CMakeFiles/timer_test.stim.txt.dir/build.make

.PHONY : timer_test.stim.txt

# Rule to build all files generated by this target.
apps/Arduino_tests/timer_test/CMakeFiles/timer_test.stim.txt.dir/build: timer_test.stim.txt

.PHONY : apps/Arduino_tests/timer_test/CMakeFiles/timer_test.stim.txt.dir/build

apps/Arduino_tests/timer_test/CMakeFiles/timer_test.stim.txt.dir/clean:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/timer_test && $(CMAKE_COMMAND) -P CMakeFiles/timer_test.stim.txt.dir/cmake_clean.cmake
.PHONY : apps/Arduino_tests/timer_test/CMakeFiles/timer_test.stim.txt.dir/clean

apps/Arduino_tests/timer_test/CMakeFiles/timer_test.stim.txt.dir/depend:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cairo/cernbox/GSOC2017/pulpino/sw /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/Arduino_tests/timer_test /home/cairo/cernbox/GSOC2017/pulpino/build /home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/timer_test /home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/timer_test/CMakeFiles/timer_test.stim.txt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/Arduino_tests/timer_test/CMakeFiles/timer_test.stim.txt.dir/depend

