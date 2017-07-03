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

# Include any dependencies generated for this target.
include apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/depend.make

# Include the progress variables for this target.
include apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/progress.make

# Include the compile flags for this target's objects.
include apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/flags.make

apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak.c.o: apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/flags.make
apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak.c.o: /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/bench/keccak/keccak.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak.c.o"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/keccak && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/perfbench.keccak.elf.dir/keccak.c.o   -c /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/bench/keccak/keccak.c

apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/perfbench.keccak.elf.dir/keccak.c.i"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/keccak && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/bench/keccak/keccak.c > CMakeFiles/perfbench.keccak.elf.dir/keccak.c.i

apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/perfbench.keccak.elf.dir/keccak.c.s"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/keccak && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/bench/keccak/keccak.c -o CMakeFiles/perfbench.keccak.elf.dir/keccak.c.s

apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak.c.o.requires:

.PHONY : apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak.c.o.requires

apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak.c.o.provides: apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak.c.o.requires
	$(MAKE) -f apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/build.make apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak.c.o.provides.build
.PHONY : apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak.c.o.provides

apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak.c.o.provides.build: apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak.c.o


apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak_test.c.o: apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/flags.make
apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak_test.c.o: /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/bench/keccak/keccak_test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak_test.c.o"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/keccak && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/perfbench.keccak.elf.dir/keccak_test.c.o   -c /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/bench/keccak/keccak_test.c

apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/perfbench.keccak.elf.dir/keccak_test.c.i"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/keccak && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/bench/keccak/keccak_test.c > CMakeFiles/perfbench.keccak.elf.dir/keccak_test.c.i

apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/perfbench.keccak.elf.dir/keccak_test.c.s"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/keccak && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/bench/keccak/keccak_test.c -o CMakeFiles/perfbench.keccak.elf.dir/keccak_test.c.s

apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak_test.c.o.requires:

.PHONY : apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak_test.c.o.requires

apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak_test.c.o.provides: apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak_test.c.o.requires
	$(MAKE) -f apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/build.make apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak_test.c.o.provides.build
.PHONY : apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak_test.c.o.provides

apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak_test.c.o.provides.build: apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak_test.c.o


# Object files for target perfbench.keccak.elf
perfbench_keccak_elf_OBJECTS = \
"CMakeFiles/perfbench.keccak.elf.dir/keccak.c.o" \
"CMakeFiles/perfbench.keccak.elf.dir/keccak_test.c.o"

# External object files for target perfbench.keccak.elf
perfbench_keccak_elf_EXTERNAL_OBJECTS = \
"/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles/crt0.dir/ref/crt0.riscv.S.o"

apps/bench/keccak/perfbench.keccak.elf: apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak.c.o
apps/bench/keccak/perfbench.keccak.elf: apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak_test.c.o
apps/bench/keccak/perfbench.keccak.elf: CMakeFiles/crt0.dir/ref/crt0.riscv.S.o
apps/bench/keccak/perfbench.keccak.elf: apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/build.make
apps/bench/keccak/perfbench.keccak.elf: apps/bench/libperfbench.core.a
apps/bench/keccak/perfbench.keccak.elf: libs/Arduino_lib/separate_libs/libArduino_separate.a
apps/bench/keccak/perfbench.keccak.elf: libs/Arduino_lib/core_libs/libArduino_core.a
apps/bench/keccak/perfbench.keccak.elf: libs/bench_lib/libbench.a
apps/bench/keccak/perfbench.keccak.elf: libs/string_lib/libstring.a
apps/bench/keccak/perfbench.keccak.elf: libs/sys_lib/libsys.a
apps/bench/keccak/perfbench.keccak.elf: apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable perfbench.keccak.elf"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/keccak && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/perfbench.keccak.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/build: apps/bench/keccak/perfbench.keccak.elf

.PHONY : apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/build

apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/requires: apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak.c.o.requires
apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/requires: apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/keccak_test.c.o.requires

.PHONY : apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/requires

apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/clean:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/keccak && $(CMAKE_COMMAND) -P CMakeFiles/perfbench.keccak.elf.dir/cmake_clean.cmake
.PHONY : apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/clean

apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/depend:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cairo/cernbox/GSOC2017/pulpino/sw /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/bench/keccak /home/cairo/cernbox/GSOC2017/pulpino/build /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/keccak /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/bench/keccak/CMakeFiles/perfbench.keccak.elf.dir/depend

