# CMake generated Testfile for 
# Source directory: /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/sequential_tests/matrixMul8_dotp
# Build directory: /home/cairo/cernbox/GSOC2017/pulpino/build/apps/sequential_tests/matrixMul8_dotp
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(matrixMul8_dotp.test "tcsh" "-c" "env PULP_CORE=riscv VSIM_DIR=/home/cairo/cernbox/GSOC2017/pulpino/vsim TB_TEST=\"\" /opt/questasim/questasim/bin/vsim  -c -64 -do 'source tcl_files/run.tcl; run_and_exit;'")
set_tests_properties(matrixMul8_dotp.test PROPERTIES  WORKING_DIRECTORY "/home/cairo/cernbox/GSOC2017/pulpino/build/apps/sequential_tests/matrixMul8_dotp/")
