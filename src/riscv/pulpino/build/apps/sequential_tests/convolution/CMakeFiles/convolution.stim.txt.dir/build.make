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

# Utility rule file for convolution.stim.txt.

# Include the progress variables for this target.
include apps/sequential_tests/convolution/CMakeFiles/convolution.stim.txt.dir/progress.make

apps/sequential_tests/convolution/CMakeFiles/convolution.stim.txt: apps/sequential_tests/convolution/vectors/stim.txt


apps/sequential_tests/convolution/vectors/stim.txt: apps/sequential_tests/convolution/convolution.s19
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating vectors/stim.txt"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/sequential_tests/convolution && /home/cairo/cernbox/GSOC2017/pulpino/sw/utils/parse_s19.pl ./convolution.s19 > ./vectors/stim.txt

apps/sequential_tests/convolution/convolution.s19: apps/sequential_tests/convolution/convolution.elf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating convolution.s19"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/sequential_tests/convolution && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-objcopy --srec-len 1 --output-target=srec /home/cairo/cernbox/GSOC2017/pulpino/build/apps/sequential_tests/convolution/convolution.elf convolution.s19

convolution.stim.txt: apps/sequential_tests/convolution/CMakeFiles/convolution.stim.txt
convolution.stim.txt: apps/sequential_tests/convolution/vectors/stim.txt
convolution.stim.txt: apps/sequential_tests/convolution/convolution.s19
convolution.stim.txt: apps/sequential_tests/convolution/CMakeFiles/convolution.stim.txt.dir/build.make

.PHONY : convolution.stim.txt

# Rule to build all files generated by this target.
apps/sequential_tests/convolution/CMakeFiles/convolution.stim.txt.dir/build: convolution.stim.txt

.PHONY : apps/sequential_tests/convolution/CMakeFiles/convolution.stim.txt.dir/build

apps/sequential_tests/convolution/CMakeFiles/convolution.stim.txt.dir/clean:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/sequential_tests/convolution && $(CMAKE_COMMAND) -P CMakeFiles/convolution.stim.txt.dir/cmake_clean.cmake
.PHONY : apps/sequential_tests/convolution/CMakeFiles/convolution.stim.txt.dir/clean

apps/sequential_tests/convolution/CMakeFiles/convolution.stim.txt.dir/depend:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cairo/cernbox/GSOC2017/pulpino/sw /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/sequential_tests/convolution /home/cairo/cernbox/GSOC2017/pulpino/build /home/cairo/cernbox/GSOC2017/pulpino/build/apps/sequential_tests/convolution /home/cairo/cernbox/GSOC2017/pulpino/build/apps/sequential_tests/convolution/CMakeFiles/convolution.stim.txt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/sequential_tests/convolution/CMakeFiles/convolution.stim.txt.dir/depend

