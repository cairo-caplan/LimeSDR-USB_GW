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
include apps/freertos/CMakeFiles/freertos.elf.dir/depend.make

# Include the progress variables for this target.
include apps/freertos/CMakeFiles/freertos.elf.dir/progress.make

# Include the compile flags for this target's objects.
include apps/freertos/CMakeFiles/freertos.elf.dir/flags.make

apps/freertos/CMakeFiles/freertos.elf.dir/main.c.o: apps/freertos/CMakeFiles/freertos.elf.dir/flags.make
apps/freertos/CMakeFiles/freertos.elf.dir/main.c.o: /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object apps/freertos/CMakeFiles/freertos.elf.dir/main.c.o"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/freertos && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/freertos.elf.dir/main.c.o   -c /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/main.c

apps/freertos/CMakeFiles/freertos.elf.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/freertos.elf.dir/main.c.i"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/freertos && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/main.c > CMakeFiles/freertos.elf.dir/main.c.i

apps/freertos/CMakeFiles/freertos.elf.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/freertos.elf.dir/main.c.s"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/freertos && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/main.c -o CMakeFiles/freertos.elf.dir/main.c.s

apps/freertos/CMakeFiles/freertos.elf.dir/main.c.o.requires:

.PHONY : apps/freertos/CMakeFiles/freertos.elf.dir/main.c.o.requires

apps/freertos/CMakeFiles/freertos.elf.dir/main.c.o.provides: apps/freertos/CMakeFiles/freertos.elf.dir/main.c.o.requires
	$(MAKE) -f apps/freertos/CMakeFiles/freertos.elf.dir/build.make apps/freertos/CMakeFiles/freertos.elf.dir/main.c.o.provides.build
.PHONY : apps/freertos/CMakeFiles/freertos.elf.dir/main.c.o.provides

apps/freertos/CMakeFiles/freertos.elf.dir/main.c.o.provides.build: apps/freertos/CMakeFiles/freertos.elf.dir/main.c.o


apps/freertos/CMakeFiles/freertos.elf.dir/Source/list.c.o: apps/freertos/CMakeFiles/freertos.elf.dir/flags.make
apps/freertos/CMakeFiles/freertos.elf.dir/Source/list.c.o: /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/Source/list.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object apps/freertos/CMakeFiles/freertos.elf.dir/Source/list.c.o"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/freertos && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/freertos.elf.dir/Source/list.c.o   -c /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/Source/list.c

apps/freertos/CMakeFiles/freertos.elf.dir/Source/list.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/freertos.elf.dir/Source/list.c.i"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/freertos && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/Source/list.c > CMakeFiles/freertos.elf.dir/Source/list.c.i

apps/freertos/CMakeFiles/freertos.elf.dir/Source/list.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/freertos.elf.dir/Source/list.c.s"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/freertos && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/Source/list.c -o CMakeFiles/freertos.elf.dir/Source/list.c.s

apps/freertos/CMakeFiles/freertos.elf.dir/Source/list.c.o.requires:

.PHONY : apps/freertos/CMakeFiles/freertos.elf.dir/Source/list.c.o.requires

apps/freertos/CMakeFiles/freertos.elf.dir/Source/list.c.o.provides: apps/freertos/CMakeFiles/freertos.elf.dir/Source/list.c.o.requires
	$(MAKE) -f apps/freertos/CMakeFiles/freertos.elf.dir/build.make apps/freertos/CMakeFiles/freertos.elf.dir/Source/list.c.o.provides.build
.PHONY : apps/freertos/CMakeFiles/freertos.elf.dir/Source/list.c.o.provides

apps/freertos/CMakeFiles/freertos.elf.dir/Source/list.c.o.provides.build: apps/freertos/CMakeFiles/freertos.elf.dir/Source/list.c.o


apps/freertos/CMakeFiles/freertos.elf.dir/Source/queue.c.o: apps/freertos/CMakeFiles/freertos.elf.dir/flags.make
apps/freertos/CMakeFiles/freertos.elf.dir/Source/queue.c.o: /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/Source/queue.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object apps/freertos/CMakeFiles/freertos.elf.dir/Source/queue.c.o"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/freertos && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/freertos.elf.dir/Source/queue.c.o   -c /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/Source/queue.c

apps/freertos/CMakeFiles/freertos.elf.dir/Source/queue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/freertos.elf.dir/Source/queue.c.i"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/freertos && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/Source/queue.c > CMakeFiles/freertos.elf.dir/Source/queue.c.i

apps/freertos/CMakeFiles/freertos.elf.dir/Source/queue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/freertos.elf.dir/Source/queue.c.s"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/freertos && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/Source/queue.c -o CMakeFiles/freertos.elf.dir/Source/queue.c.s

apps/freertos/CMakeFiles/freertos.elf.dir/Source/queue.c.o.requires:

.PHONY : apps/freertos/CMakeFiles/freertos.elf.dir/Source/queue.c.o.requires

apps/freertos/CMakeFiles/freertos.elf.dir/Source/queue.c.o.provides: apps/freertos/CMakeFiles/freertos.elf.dir/Source/queue.c.o.requires
	$(MAKE) -f apps/freertos/CMakeFiles/freertos.elf.dir/build.make apps/freertos/CMakeFiles/freertos.elf.dir/Source/queue.c.o.provides.build
.PHONY : apps/freertos/CMakeFiles/freertos.elf.dir/Source/queue.c.o.provides

apps/freertos/CMakeFiles/freertos.elf.dir/Source/queue.c.o.provides.build: apps/freertos/CMakeFiles/freertos.elf.dir/Source/queue.c.o


apps/freertos/CMakeFiles/freertos.elf.dir/Source/tasks.c.o: apps/freertos/CMakeFiles/freertos.elf.dir/flags.make
apps/freertos/CMakeFiles/freertos.elf.dir/Source/tasks.c.o: /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/Source/tasks.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object apps/freertos/CMakeFiles/freertos.elf.dir/Source/tasks.c.o"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/freertos && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/freertos.elf.dir/Source/tasks.c.o   -c /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/Source/tasks.c

apps/freertos/CMakeFiles/freertos.elf.dir/Source/tasks.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/freertos.elf.dir/Source/tasks.c.i"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/freertos && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/Source/tasks.c > CMakeFiles/freertos.elf.dir/Source/tasks.c.i

apps/freertos/CMakeFiles/freertos.elf.dir/Source/tasks.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/freertos.elf.dir/Source/tasks.c.s"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/freertos && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/Source/tasks.c -o CMakeFiles/freertos.elf.dir/Source/tasks.c.s

apps/freertos/CMakeFiles/freertos.elf.dir/Source/tasks.c.o.requires:

.PHONY : apps/freertos/CMakeFiles/freertos.elf.dir/Source/tasks.c.o.requires

apps/freertos/CMakeFiles/freertos.elf.dir/Source/tasks.c.o.provides: apps/freertos/CMakeFiles/freertos.elf.dir/Source/tasks.c.o.requires
	$(MAKE) -f apps/freertos/CMakeFiles/freertos.elf.dir/build.make apps/freertos/CMakeFiles/freertos.elf.dir/Source/tasks.c.o.provides.build
.PHONY : apps/freertos/CMakeFiles/freertos.elf.dir/Source/tasks.c.o.provides

apps/freertos/CMakeFiles/freertos.elf.dir/Source/tasks.c.o.provides.build: apps/freertos/CMakeFiles/freertos.elf.dir/Source/tasks.c.o


apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/GCC/RI5CY/port.c.o: apps/freertos/CMakeFiles/freertos.elf.dir/flags.make
apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/GCC/RI5CY/port.c.o: /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/Source/portable/GCC/RI5CY/port.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/GCC/RI5CY/port.c.o"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/freertos && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/freertos.elf.dir/Source/portable/GCC/RI5CY/port.c.o   -c /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/Source/portable/GCC/RI5CY/port.c

apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/GCC/RI5CY/port.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/freertos.elf.dir/Source/portable/GCC/RI5CY/port.c.i"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/freertos && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/Source/portable/GCC/RI5CY/port.c > CMakeFiles/freertos.elf.dir/Source/portable/GCC/RI5CY/port.c.i

apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/GCC/RI5CY/port.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/freertos.elf.dir/Source/portable/GCC/RI5CY/port.c.s"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/freertos && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/Source/portable/GCC/RI5CY/port.c -o CMakeFiles/freertos.elf.dir/Source/portable/GCC/RI5CY/port.c.s

apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/GCC/RI5CY/port.c.o.requires:

.PHONY : apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/GCC/RI5CY/port.c.o.requires

apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/GCC/RI5CY/port.c.o.provides: apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/GCC/RI5CY/port.c.o.requires
	$(MAKE) -f apps/freertos/CMakeFiles/freertos.elf.dir/build.make apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/GCC/RI5CY/port.c.o.provides.build
.PHONY : apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/GCC/RI5CY/port.c.o.provides

apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/GCC/RI5CY/port.c.o.provides.build: apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/GCC/RI5CY/port.c.o


apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/MemMang/heap_1.c.o: apps/freertos/CMakeFiles/freertos.elf.dir/flags.make
apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/MemMang/heap_1.c.o: /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/Source/portable/MemMang/heap_1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/MemMang/heap_1.c.o"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/freertos && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/freertos.elf.dir/Source/portable/MemMang/heap_1.c.o   -c /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/Source/portable/MemMang/heap_1.c

apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/MemMang/heap_1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/freertos.elf.dir/Source/portable/MemMang/heap_1.c.i"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/freertos && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/Source/portable/MemMang/heap_1.c > CMakeFiles/freertos.elf.dir/Source/portable/MemMang/heap_1.c.i

apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/MemMang/heap_1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/freertos.elf.dir/Source/portable/MemMang/heap_1.c.s"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/freertos && /home/cairo/cernbox/GSOC2017/ri5cy_gnu_toolchain/install/bin/riscv32-unknown-elf-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos/Source/portable/MemMang/heap_1.c -o CMakeFiles/freertos.elf.dir/Source/portable/MemMang/heap_1.c.s

apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/MemMang/heap_1.c.o.requires:

.PHONY : apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/MemMang/heap_1.c.o.requires

apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/MemMang/heap_1.c.o.provides: apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/MemMang/heap_1.c.o.requires
	$(MAKE) -f apps/freertos/CMakeFiles/freertos.elf.dir/build.make apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/MemMang/heap_1.c.o.provides.build
.PHONY : apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/MemMang/heap_1.c.o.provides

apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/MemMang/heap_1.c.o.provides.build: apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/MemMang/heap_1.c.o


# Object files for target freertos.elf
freertos_elf_OBJECTS = \
"CMakeFiles/freertos.elf.dir/main.c.o" \
"CMakeFiles/freertos.elf.dir/Source/list.c.o" \
"CMakeFiles/freertos.elf.dir/Source/queue.c.o" \
"CMakeFiles/freertos.elf.dir/Source/tasks.c.o" \
"CMakeFiles/freertos.elf.dir/Source/portable/GCC/RI5CY/port.c.o" \
"CMakeFiles/freertos.elf.dir/Source/portable/MemMang/heap_1.c.o"

# External object files for target freertos.elf
freertos_elf_EXTERNAL_OBJECTS = \
"/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles/crt0.dir/ref/crt0.riscv.S.o"

apps/freertos/freertos.elf: apps/freertos/CMakeFiles/freertos.elf.dir/main.c.o
apps/freertos/freertos.elf: apps/freertos/CMakeFiles/freertos.elf.dir/Source/list.c.o
apps/freertos/freertos.elf: apps/freertos/CMakeFiles/freertos.elf.dir/Source/queue.c.o
apps/freertos/freertos.elf: apps/freertos/CMakeFiles/freertos.elf.dir/Source/tasks.c.o
apps/freertos/freertos.elf: apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/GCC/RI5CY/port.c.o
apps/freertos/freertos.elf: apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/MemMang/heap_1.c.o
apps/freertos/freertos.elf: CMakeFiles/crt0.dir/ref/crt0.riscv.S.o
apps/freertos/freertos.elf: apps/freertos/CMakeFiles/freertos.elf.dir/build.make
apps/freertos/freertos.elf: libs/Arduino_lib/separate_libs/libArduino_separate.a
apps/freertos/freertos.elf: libs/Arduino_lib/core_libs/libArduino_core.a
apps/freertos/freertos.elf: libs/bench_lib/libbench.a
apps/freertos/freertos.elf: libs/string_lib/libstring.a
apps/freertos/freertos.elf: libs/sys_lib/libsys.a
apps/freertos/freertos.elf: apps/freertos/CMakeFiles/freertos.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/cairo/cernbox/GSOC2017/pulpino/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable freertos.elf"
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/freertos && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/freertos.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/freertos/CMakeFiles/freertos.elf.dir/build: apps/freertos/freertos.elf

.PHONY : apps/freertos/CMakeFiles/freertos.elf.dir/build

apps/freertos/CMakeFiles/freertos.elf.dir/requires: apps/freertos/CMakeFiles/freertos.elf.dir/main.c.o.requires
apps/freertos/CMakeFiles/freertos.elf.dir/requires: apps/freertos/CMakeFiles/freertos.elf.dir/Source/list.c.o.requires
apps/freertos/CMakeFiles/freertos.elf.dir/requires: apps/freertos/CMakeFiles/freertos.elf.dir/Source/queue.c.o.requires
apps/freertos/CMakeFiles/freertos.elf.dir/requires: apps/freertos/CMakeFiles/freertos.elf.dir/Source/tasks.c.o.requires
apps/freertos/CMakeFiles/freertos.elf.dir/requires: apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/GCC/RI5CY/port.c.o.requires
apps/freertos/CMakeFiles/freertos.elf.dir/requires: apps/freertos/CMakeFiles/freertos.elf.dir/Source/portable/MemMang/heap_1.c.o.requires

.PHONY : apps/freertos/CMakeFiles/freertos.elf.dir/requires

apps/freertos/CMakeFiles/freertos.elf.dir/clean:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build/apps/freertos && $(CMAKE_COMMAND) -P CMakeFiles/freertos.elf.dir/cmake_clean.cmake
.PHONY : apps/freertos/CMakeFiles/freertos.elf.dir/clean

apps/freertos/CMakeFiles/freertos.elf.dir/depend:
	cd /home/cairo/cernbox/GSOC2017/pulpino/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cairo/cernbox/GSOC2017/pulpino/sw /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/freertos /home/cairo/cernbox/GSOC2017/pulpino/build /home/cairo/cernbox/GSOC2017/pulpino/build/apps/freertos /home/cairo/cernbox/GSOC2017/pulpino/build/apps/freertos/CMakeFiles/freertos.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/freertos/CMakeFiles/freertos.elf.dir/depend

