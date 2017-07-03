# CMake generated Testfile for 
# Source directory: /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/fpga/gpio_demo
# Build directory: /home/cairo/cernbox/GSOC2017/pulpino/build/apps/fpga/gpio_demo
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(gpio_demo.test "tcsh" "-c" "env PULP_CORE=riscv VSIM_DIR=/home/cairo/cernbox/GSOC2017/pulpino/vsim TB_TEST=\"\" /opt/questasim/questasim/bin/vsim  -c -64 -do 'source tcl_files/run.tcl; run_and_exit;'")
set_tests_properties(gpio_demo.test PROPERTIES  WORKING_DIRECTORY "/home/cairo/cernbox/GSOC2017/pulpino/build/apps/fpga/gpio_demo/")
