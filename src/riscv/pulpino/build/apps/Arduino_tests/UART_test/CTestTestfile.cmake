# CMake generated Testfile for 
# Source directory: /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/Arduino_tests/UART_test
# Build directory: /home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/UART_test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(UART_test.test "tcsh" "-c" "env PULP_CORE=riscv VSIM_DIR=/home/cairo/cernbox/GSOC2017/pulpino/vsim TB_TEST=\"ARDUINO_UART\" /opt/questasim/questasim/bin/vsim  -c -64 -do 'source tcl_files/run.tcl; run_and_exit;'")
set_tests_properties(UART_test.test PROPERTIES  LABELS "arduino" WORKING_DIRECTORY "/home/cairo/cernbox/GSOC2017/pulpino/build/apps/Arduino_tests/UART_test/")
