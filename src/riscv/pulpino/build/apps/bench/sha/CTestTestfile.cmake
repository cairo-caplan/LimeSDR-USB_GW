# CMake generated Testfile for 
# Source directory: /home/cairo/cernbox/GSOC2017/pulpino/sw/apps/bench/sha
# Build directory: /home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/sha
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(perfbench.sha.test "tcsh" "-c" "env PULP_CORE=riscv VSIM_DIR=/home/cairo/cernbox/GSOC2017/pulpino/vsim TB_TEST=\"\" /opt/questasim/questasim/bin/vsim  -c -64 -do 'source tcl_files/run.tcl; run_and_exit;'")
set_tests_properties(perfbench.sha.test PROPERTIES  LABELS "perfbench" WORKING_DIRECTORY "/home/cairo/cernbox/GSOC2017/pulpino/build/apps/bench/sha/")
