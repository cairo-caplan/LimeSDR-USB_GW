set_location_assignment PIN_R22 -to FX3_DQ[15]
set_location_assignment PIN_M21 -to FX3_DQ[14]
set_location_assignment PIN_M22 -to FX3_DQ[13]
set_location_assignment PIN_U19 -to FX3_DQ[12]
set_location_assignment PIN_U20 -to FX3_DQ[11]
set_location_assignment PIN_U21 -to FX3_DQ[10]
set_location_assignment PIN_U22 -to FX3_DQ[9]
set_location_assignment PIN_V21 -to FX3_DQ[8]
set_location_assignment PIN_V22 -to FX3_DQ[7]
set_location_assignment PIN_W20 -to FX3_DQ[6]
set_location_assignment PIN_W21 -to FX3_DQ[5]
set_location_assignment PIN_W22 -to FX3_DQ[4]
set_location_assignment PIN_Y21 -to FX3_DQ[3]
set_location_assignment PIN_Y22 -to FX3_DQ[2]
set_location_assignment PIN_AA21 -to FX3_DQ[1]
set_location_assignment PIN_M19 -to FX3_DQ[0]
set_location_assignment PIN_T21 -to FX3_PCLK
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[15]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[14]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[13]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[12]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[11]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[10]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[9]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[8]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[7]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[6]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[5]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[4]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[3]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[2]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[1]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[0]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_PCLK
set_location_assignment PIN_C6 -to LMS_RESET
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_RESET
set_location_assignment PIN_C3 -to LMS_RXEN
set_location_assignment PIN_B10 -to LMS_TXEN
set_global_assignment -name ENABLE_OCT_DONE OFF
set_global_assignment -name ENABLE_CONFIGURATION_PINS OFF
set_global_assignment -name ENABLE_BOOT_SEL_PIN OFF
set_global_assignment -name USE_CONFIGURATION_DEVICE ON
set_global_assignment -name CRC_ERROR_OPEN_DRAIN OFF
set_global_assignment -name RESERVE_ALL_UNUSED_PINS_WEAK_PULLUP "AS INPUT TRI-STATED"
set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -rise
set_global_assignment -name OUTPUT_IO_TIMING_NEAR_END_VMEAS "HALF VCCIO" -fall
set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -rise
set_global_assignment -name OUTPUT_IO_TIMING_FAR_END_VMEAS "HALF SIGNAL SWING" -fall
set_global_assignment -name ON_CHIP_BITSTREAM_DECOMPRESSION OFF
set_global_assignment -name OPTIMIZATION_MODE "HIGH PERFORMANCE EFFORT"
set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
set_location_assignment PIN_K7 -to BRDG_SPI_FPGA_SS
set_location_assignment PIN_B2 -to BRDG_SPI_SCLK
set_location_assignment PIN_B1 -to BRDG_SPI_MOSI
set_location_assignment PIN_C1 -to BRDG_SPI_MISO
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to BRDG_SPI_FPGA_SS
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to BRDG_SPI_MISO
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to BRDG_SPI_MOSI
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to BRDG_SPI_SCLK
set_location_assignment PIN_T2 -to SI_CLK0
set_instance_assignment -name IO_STANDARD "1.8 V" -to SI_CLK0
set_location_assignment PIN_A13 -to LMS_DIQ1_D[11]
set_location_assignment PIN_A14 -to LMS_DIQ1_D[10]
set_location_assignment PIN_A15 -to LMS_DIQ1_D[9]
set_location_assignment PIN_A16 -to LMS_DIQ1_D[8]
set_location_assignment PIN_A17 -to LMS_DIQ1_D[7]
set_location_assignment PIN_A18 -to LMS_DIQ1_D[6]
set_location_assignment PIN_C13 -to LMS_DIQ1_D[5]
set_location_assignment PIN_B13 -to LMS_DIQ1_D[4]
set_location_assignment PIN_B14 -to LMS_DIQ1_D[3]
set_location_assignment PIN_B15 -to LMS_DIQ1_D[2]
set_location_assignment PIN_B16 -to LMS_DIQ1_D[1]
set_location_assignment PIN_B17 -to LMS_DIQ1_D[0]
set_location_assignment PIN_C4 -to LMS_DIQ1_IQSEL
set_location_assignment PIN_A3 -to LMS_DIQ2_D[11]
set_location_assignment PIN_A4 -to LMS_DIQ2_D[10]
set_location_assignment PIN_A5 -to LMS_DIQ2_D[9]
set_location_assignment PIN_A6 -to LMS_DIQ2_D[8]
set_location_assignment PIN_A7 -to LMS_DIQ2_D[7]
set_location_assignment PIN_A8 -to LMS_DIQ2_D[6]
set_location_assignment PIN_A9 -to LMS_DIQ2_D[5]
set_location_assignment PIN_A10 -to LMS_DIQ2_D[4]
set_location_assignment PIN_B3 -to LMS_DIQ2_D[3]
set_location_assignment PIN_B4 -to LMS_DIQ2_D[2]
set_location_assignment PIN_B6 -to LMS_DIQ2_D[1]
set_location_assignment PIN_B7 -to LMS_DIQ2_D[0]
set_location_assignment PIN_C7 -to LMS_DIQ2_IQSEL2
set_location_assignment PIN_B20 -to LMS_FCLK1
set_location_assignment PIN_E5 -to LMS_FCLK2
set_location_assignment PIN_G21 -to LMS_MCLK1
set_location_assignment PIN_B11 -to LMS_MCLK2
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_TXEN
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_RXEN
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ1_D[5]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_FCLK1
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ1_D[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ1_D[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ1_D[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ1_D[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ1_D[4]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ1_D[6]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ1_D[7]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ1_D[8]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ1_D[9]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ1_D[10]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ1_D[11]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_FCLK2
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ2_IQSEL2
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ1_IQSEL
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_MCLK2
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ2_D[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ2_D[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ2_D[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ2_D[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ2_D[4]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ2_D[5]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ2_D[6]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ2_D[7]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ2_D[8]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ2_D[9]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ2_D[10]
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_DIQ2_D[11]
set_location_assignment PIN_L6 -to FX3_CTL0
set_location_assignment PIN_L7 -to FX3_CTL1
set_location_assignment PIN_M1 -to FX3_CTL2
set_location_assignment PIN_M2 -to FX3_CTL3
set_location_assignment PIN_M3 -to FX3_CTL4
set_location_assignment PIN_M4 -to FX3_CTL5
set_location_assignment PIN_M6 -to FX3_CTL6
set_location_assignment PIN_M7 -to FX3_CTL7
set_location_assignment PIN_M8 -to FX3_CTL8
set_location_assignment PIN_N5 -to FX3_CTL11
set_location_assignment PIN_N6 -to FX3_CTL12
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_CTL0
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_CTL1
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_CTL2
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_CTL3
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_CTL4
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_CTL5
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_CTL6
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_CTL7
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_CTL8
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_CTL11
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_CTL12
set_location_assignment PIN_E1 -to FPGA_LED2_R
set_location_assignment PIN_J4 -to FPGA_LED2_G
set_location_assignment PIN_E3 -to FPGA_LED1_R
set_location_assignment PIN_D2 -to FPGA_LED1_G
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to FPGA_LED2_R
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to FPGA_LED2_G
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to FPGA_LED1_R
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to FPGA_LED1_G
set_location_assignment PIN_T17 -to EXT_GND
set_instance_assignment -name IO_STANDARD "1.8 V" -to EXT_GND
set_global_assignment -name TRI_STATE_SPI_PINS ON
set_global_assignment -name FORCE_CONFIGURATION_VCCIO ON
set_global_assignment -name RESERVE_DATA0_AFTER_CONFIGURATION "USE AS REGULAR IO"
set_global_assignment -name RESERVE_DATA1_AFTER_CONFIGURATION "USE AS REGULAR IO"
set_global_assignment -name RESERVE_FLASH_NCE_AFTER_CONFIGURATION "USE AS REGULAR IO"
set_global_assignment -name RESERVE_DCLK_AFTER_CONFIGURATION "USE AS REGULAR IO"
set_location_assignment PIN_J6 -to LM75_OS
set_location_assignment PIN_E4 -to FAN_CTRL
set_global_assignment -name ENABLE_SIGNALTAP OFF
set_global_assignment -name USE_SIGNALTAP_FILE signal_tap/debug.stp
set_location_assignment PIN_N16 -to FX3_DQ[31]
set_location_assignment PIN_N17 -to FX3_DQ[30]
set_location_assignment PIN_N18 -to FX3_DQ[29]
set_location_assignment PIN_N19 -to FX3_DQ[28]
set_location_assignment PIN_N20 -to FX3_DQ[27]
set_location_assignment PIN_N21 -to FX3_DQ[26]
set_location_assignment PIN_N22 -to FX3_DQ[25]
set_location_assignment PIN_P15 -to FX3_DQ[24]
set_location_assignment PIN_P16 -to FX3_DQ[23]
set_location_assignment PIN_M20 -to FX3_DQ[22]
set_location_assignment PIN_P21 -to FX3_DQ[21]
set_location_assignment PIN_P22 -to FX3_DQ[20]
set_location_assignment PIN_R18 -to FX3_DQ[19]
set_location_assignment PIN_R19 -to FX3_DQ[18]
set_location_assignment PIN_R20 -to FX3_DQ[17]
set_location_assignment PIN_R21 -to FX3_DQ[16]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[31]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[30]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[29]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[28]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[27]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[26]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[25]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[24]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[23]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[22]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[21]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[20]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[19]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[18]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[17]
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_DQ[16]
set_global_assignment -name POST_FLOW_SCRIPT_FILE "quartus_sh:gen_prg_files.tcl"
set_location_assignment PIN_K8 -to FPGA_SPI1_SCLK
set_location_assignment PIN_L8 -to FPGA_SPI1_MOSI
set_location_assignment PIN_J3 -to FPGA_SPI1_DAC_SS
set_location_assignment PIN_J5 -to FPGA_SPI1_ADF_SS
set_location_assignment PIN_E6 -to FPGA_SPI0_SCLK
set_location_assignment PIN_D7 -to FPGA_SPI0_MOSI
set_location_assignment PIN_C8 -to FPGA_SPI0_MISO
set_location_assignment PIN_D10 -to FPGA_SPI0_LMS_SS
set_location_assignment PIN_J2 -to ADF_MUXOUT
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_odt[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_1_odt[0]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_clk[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_1_clk[0]
set_instance_assignment -name PAD_TO_CORE_DELAY 0 -to DDR2_1_clk[0]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_clk_n[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_1_clk_n[0]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_cs_n[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_1_cs_n[0]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_cke[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_1_cke[0]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_addr[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_1_addr[0]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_addr[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_1_addr[1]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_addr[2]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_1_addr[2]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_addr[3]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_1_addr[3]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_addr[4]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_1_addr[4]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_addr[5]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_1_addr[5]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_addr[6]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_1_addr[6]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_addr[7]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_1_addr[7]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_addr[8]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_1_addr[8]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_addr[9]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_1_addr[9]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_addr[10]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_1_addr[10]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_addr[11]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_1_addr[11]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_addr[12]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_1_addr[12]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_ba[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_1_ba[0]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_ba[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_1_ba[1]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_ba[2]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_1_ba[2]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_ras_n
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_1_ras_n
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_cas_n
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_1_cas_n
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_we_n
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_1_we_n
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_dq[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_1_dq[0]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_dq[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_1_dq[1]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_dq[2]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_1_dq[2]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_dq[3]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_1_dq[3]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_dq[4]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_1_dq[4]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_dq[5]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_1_dq[5]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_dq[6]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_1_dq[6]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_dq[7]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_1_dq[7]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_dq[8]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_1_dq[8]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_dq[9]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_1_dq[9]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_dq[10]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_1_dq[10]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_dq[11]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_1_dq[11]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_dq[12]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_1_dq[12]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_dq[13]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_1_dq[13]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_dq[14]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_1_dq[14]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_dq[15]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_1_dq[15]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_dqs[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_1_dqs[0]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_dqs[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_1_dqs[1]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_dm[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_1_dm[0]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_1_dm[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_1_dm[1]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_1_dq[0]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_1_dq[1]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_1_dq[2]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_1_dq[3]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_1_dq[4]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_1_dq[5]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_1_dq[6]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_1_dq[7]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_1_dq[8]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_1_dq[9]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_1_dq[10]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_1_dq[11]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_1_dq[12]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_1_dq[13]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_1_dq[14]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_1_dq[15]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_1_dq[0]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_1_dq[1]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_1_dq[2]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_1_dq[3]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_1_dq[4]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_1_dq[5]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_1_dq[6]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_1_dq[7]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_1_dq[8]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_1_dq[9]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_1_dq[10]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_1_dq[11]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_1_dq[12]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_1_dq[13]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_1_dq[14]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_1_dq[15]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_1_dqs[0]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_1_dqs[1]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_1_dqs[0]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_1_dqs[1]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_1_dm[0]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_1_dm[1]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_1_dm[0]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_1_dm[1]
set_instance_assignment -name CKN_CK_PAIR ON -from DDR2_1_clk_n[0] -to DDR2_1_clk[0]
set_location_assignment PIN_AA4 -to DDR2_1_dq[15]
set_location_assignment PIN_U9 -to DDR2_1_dq[14]
set_location_assignment PIN_Y7 -to DDR2_1_dq[13]
set_location_assignment PIN_W8 -to DDR2_1_dq[12]
set_location_assignment PIN_V8 -to DDR2_1_dq[11]
set_location_assignment PIN_W7 -to DDR2_1_dq[10]
set_location_assignment PIN_AA5 -to DDR2_1_dq[9]
set_location_assignment PIN_W6 -to DDR2_1_dq[8]
set_location_assignment PIN_Y10 -to DDR2_1_dq[7]
set_location_assignment PIN_AA8 -to DDR2_1_dq[6]
set_location_assignment PIN_W10 -to DDR2_1_dq[5]
set_location_assignment PIN_V11 -to DDR2_1_dq[4]
set_location_assignment PIN_AA9 -to DDR2_1_dq[3]
set_location_assignment PIN_AB7 -to DDR2_1_dq[2]
set_location_assignment PIN_AB8 -to DDR2_1_dq[1]
set_location_assignment PIN_U10 -to DDR2_1_dq[0]
set_location_assignment PIN_V10 -to DDR2_1_dqs[1]
set_location_assignment PIN_AB9 -to DDR2_1_dqs[0]
set_location_assignment PIN_V5 -to DDR2_1_dm[1]
set_location_assignment PIN_AA7 -to DDR2_1_dm[0]
set_location_assignment PIN_U7 -to DDR2_1_clk[0]
set_location_assignment PIN_U8 -to DDR2_1_clk_n[0]
set_location_assignment PIN_T8 -to DDR2_1_addr[12]
set_location_assignment PIN_W2 -to DDR2_1_addr[11]
set_location_assignment PIN_Y6 -to DDR2_1_addr[10]
set_location_assignment PIN_V7 -to DDR2_1_addr[9]
set_location_assignment PIN_Y1 -to DDR2_1_addr[8]
set_location_assignment PIN_AB5 -to DDR2_1_addr[7]
set_location_assignment PIN_Y2 -to DDR2_1_addr[6]
set_location_assignment PIN_AB3 -to DDR2_1_addr[5]
set_location_assignment PIN_AA1 -to DDR2_1_addr[4]
set_location_assignment PIN_V6 -to DDR2_1_addr[3]
set_location_assignment PIN_Y3 -to DDR2_1_addr[2]
set_location_assignment PIN_AA3 -to DDR2_1_addr[1]
set_location_assignment PIN_W1 -to DDR2_1_addr[0]
set_location_assignment PIN_V3 -to DDR2_1_ba[1]
set_location_assignment PIN_V4 -to DDR2_1_ba[0]
set_location_assignment PIN_T4 -to DDR2_1_cas_n
set_location_assignment PIN_R7 -to DDR2_1_cke[0]
set_location_assignment PIN_R6 -to DDR2_1_cs_n[0]
set_location_assignment PIN_P6 -to DDR2_1_odt[0]
set_location_assignment PIN_T5 -to DDR2_1_ras_n
set_location_assignment PIN_T7 -to DDR2_1_we_n
set_location_assignment PIN_V1 -to DDR2_1_ba[2]
set_instance_assignment -name WEAK_PULL_UP_RESISTOR ON -to FPGA_SPI1_DAC_SS
set_global_assignment -name SEARCH_PATH "h:\\working_dir\\altera\\limesdr-usb\\lms7_trx\\symbols"
set_global_assignment -name SEARCH_PATH symbols/
set_location_assignment PIN_F16 -to TX2_2_LB_SH
set_location_assignment PIN_F11 -to TX2_2_LB_L
set_location_assignment PIN_H11 -to TX2_2_LB_H
set_location_assignment PIN_E15 -to TX2_2_LB_AT
set_location_assignment PIN_G15 -to TX1_2_LB_SH
set_location_assignment PIN_F14 -to TX1_2_LB_L
set_location_assignment PIN_F15 -to TX1_2_LB_H
set_location_assignment PIN_E16 -to TX1_2_LB_AT
set_location_assignment PIN_N7 -to FX3_LED_R_LS
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_LED_R_LS
set_location_assignment PIN_P2 -to FX3_LED_G_LS
set_instance_assignment -name IO_STANDARD "1.8 V" -to FX3_LED_G_LS
set_location_assignment PIN_G5 -to FX3_LED_G
set_location_assignment PIN_H5 -to FX3_LED_R
set_location_assignment PIN_H17 -to HW_VER[3]
set_location_assignment PIN_F20 -to HW_VER[0]
set_location_assignment PIN_F19 -to HW_VER[1]
set_location_assignment PIN_G18 -to HW_VER[2]
set_instance_assignment -name WEAK_PULL_UP_RESISTOR ON -to HW_VER[3]
set_instance_assignment -name WEAK_PULL_UP_RESISTOR ON -to HW_VER[0]
set_instance_assignment -name WEAK_PULL_UP_RESISTOR ON -to HW_VER[1]
set_instance_assignment -name WEAK_PULL_UP_RESISTOR ON -to HW_VER[2]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_odt[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_2_odt[0]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_clk[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_2_clk[0]
set_instance_assignment -name PAD_TO_CORE_DELAY 0 -to DDR2_2_clk[0]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_clk_n[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_2_clk_n[0]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_cs_n[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_2_cs_n[0]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_cke[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_2_cke[0]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_addr[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_2_addr[0]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_addr[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_2_addr[1]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_addr[2]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_2_addr[2]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_addr[3]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_2_addr[3]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_addr[4]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_2_addr[4]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_addr[5]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_2_addr[5]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_addr[6]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_2_addr[6]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_addr[7]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_2_addr[7]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_addr[8]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_2_addr[8]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_addr[9]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_2_addr[9]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_addr[10]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_2_addr[10]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_addr[11]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_2_addr[11]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_addr[12]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_2_addr[12]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_ba[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_2_ba[0]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_ba[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_2_ba[1]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_ba[2]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_2_ba[2]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_ras_n
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_2_ras_n
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_cas_n
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_2_cas_n
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_we_n
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to DDR2_2_we_n
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_dq[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_2_dq[0]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_dq[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_2_dq[1]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_dq[2]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_2_dq[2]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_dq[3]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_2_dq[3]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_dq[4]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_2_dq[4]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_dq[5]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_2_dq[5]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_dq[6]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_2_dq[6]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_dq[7]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_2_dq[7]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_dq[8]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_2_dq[8]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_dq[9]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_2_dq[9]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_dq[10]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_2_dq[10]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_dq[11]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_2_dq[11]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_dq[12]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_2_dq[12]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_dq[13]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_2_dq[13]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_dq[14]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_2_dq[14]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_dq[15]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_2_dq[15]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_dqs[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_2_dqs[0]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_dqs[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_2_dqs[1]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_dm[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_2_dm[0]
set_instance_assignment -name IO_STANDARD "SSTL-18 CLASS I" -to DDR2_2_dm[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW 12MA -to DDR2_2_dm[1]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_2_dq[0]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_2_dq[1]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_2_dq[2]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_2_dq[3]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_2_dq[4]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_2_dq[5]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_2_dq[6]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_2_dq[7]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_2_dq[8]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_2_dq[9]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_2_dq[10]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_2_dq[11]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_2_dq[12]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_2_dq[13]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_2_dq[14]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_2_dq[15]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_2_dq[0]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_2_dq[1]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_2_dq[2]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_2_dq[3]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_2_dq[4]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_2_dq[5]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_2_dq[6]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_2_dq[7]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_2_dq[8]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_2_dq[9]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_2_dq[10]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_2_dq[11]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_2_dq[12]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_2_dq[13]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_2_dq[14]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_2_dq[15]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_2_dqs[0]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_2_dqs[1]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_2_dqs[0]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_2_dqs[1]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_2_dm[0]
set_instance_assignment -name MEM_INTERFACE_DELAY_CHAIN_CONFIG FLEXIBLE_TIMING -to DDR2_2_dm[1]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_2_dm[0]
set_instance_assignment -name OUTPUT_ENABLE_GROUP 3078784 -to DDR2_2_dm[1]
set_instance_assignment -name CKN_CK_PAIR ON -from DDR2_2_clk_n[0] -to DDR2_2_clk[0]
set_instance_assignment -name IO_STANDARD "1.8 V" -to SI_CLK1
set_location_assignment PIN_AA12 -to SI_CLK1
set_location_assignment PIN_T9 -to DDR2_2_we_n
set_location_assignment PIN_T11 -to DDR2_2_ras_n
set_location_assignment PIN_T12 -to DDR2_2_odt[0]
set_location_assignment PIN_V13 -to DDR2_2_dqs[0]
set_location_assignment PIN_Y13 -to DDR2_2_dqs[1]
set_location_assignment PIN_W15 -to DDR2_2_dq[0]
set_location_assignment PIN_V14 -to DDR2_2_dq[1]
set_location_assignment PIN_AB20 -to DDR2_2_dq[2]
set_location_assignment PIN_AB18 -to DDR2_2_dq[3]
set_location_assignment PIN_T15 -to DDR2_2_dq[4]
set_location_assignment PIN_W17 -to DDR2_2_dq[5]
set_location_assignment PIN_AB16 -to DDR2_2_dq[6]
set_location_assignment PIN_V15 -to DDR2_2_dq[7]
set_location_assignment PIN_W13 -to DDR2_2_dq[8]
set_location_assignment PIN_AB13 -to DDR2_2_dq[9]
set_location_assignment PIN_AA15 -to DDR2_2_dq[10]
set_location_assignment PIN_AB14 -to DDR2_2_dq[11]
set_location_assignment PIN_AA14 -to DDR2_2_dq[12]
set_location_assignment PIN_AB15 -to DDR2_2_dq[13]
set_location_assignment PIN_AA13 -to DDR2_2_dq[14]
set_location_assignment PIN_U12 -to DDR2_2_dq[15]
set_location_assignment PIN_AA16 -to DDR2_2_dm[0]
set_location_assignment PIN_AA10 -to DDR2_2_dm[1]
set_location_assignment PIN_Y8 -to DDR2_2_cs_n[0]
set_location_assignment PIN_R15 -to DDR2_2_clk_n[0]
set_location_assignment PIN_R14 -to DDR2_2_clk[0]
set_location_assignment PIN_AB10 -to DDR2_2_cke[0]
set_location_assignment PIN_T10 -to DDR2_2_cas_n
set_location_assignment PIN_U13 -to DDR2_2_ba[0]
set_location_assignment PIN_T13 -to DDR2_2_ba[1]
set_location_assignment PIN_V2 -to DDR2_2_ba[2]
set_location_assignment PIN_U15 -to DDR2_2_addr[0]
set_location_assignment PIN_AA17 -to DDR2_2_addr[1]
set_location_assignment PIN_T14 -to DDR2_2_addr[2]
set_location_assignment PIN_Y17 -to DDR2_2_addr[3]
set_location_assignment PIN_T16 -to DDR2_2_addr[4]
set_location_assignment PIN_P7 -to DDR2_2_addr[5]
set_location_assignment PIN_U17 -to DDR2_2_addr[6]
set_location_assignment PIN_N8 -to DDR2_2_addr[7]
set_location_assignment PIN_R16 -to DDR2_2_addr[8]
set_location_assignment PIN_AA20 -to DDR2_2_addr[9]
set_location_assignment PIN_AB17 -to DDR2_2_addr[10]
set_location_assignment PIN_U16 -to DDR2_2_addr[11]
set_location_assignment PIN_U14 -to DDR2_2_addr[12]
set_location_assignment PIN_AB12 -to SI_CLK2
set_instance_assignment -name IO_STANDARD "1.8 V" -to SI_CLK2
set_location_assignment PIN_U1 -to BOM_VER[2]
set_location_assignment PIN_U2 -to BOM_VER[1]
set_location_assignment PIN_R2 -to BOM_VER[0]
set_instance_assignment -name IO_STANDARD "1.8 V" -to BOM_VER[0]
set_instance_assignment -name IO_STANDARD "1.8 V" -to BOM_VER[1]
set_instance_assignment -name IO_STANDARD "1.8 V" -to BOM_VER[2]
set_location_assignment PIN_B12 -to LMK_CLK
set_location_assignment PIN_T22 -to SI_CLK3
set_location_assignment PIN_G1 -to SI_CLK5
set_location_assignment PIN_AA11 -to SI_CLK6
set_location_assignment PIN_AB11 -to SI_CLK7
set_instance_assignment -name IO_STANDARD "1.8 V" -to SI_CLK3
set_instance_assignment -name IO_STANDARD "1.8 V" -to SI_CLK7
set_instance_assignment -name IO_STANDARD "1.8 V" -to SI_CLK6
set_global_assignment -name SEED 1
set_global_assignment -name SYNCHRONIZER_IDENTIFICATION AUTO
set_location_assignment PIN_B18 -to LMS_CORE_LDO_EN
set_location_assignment PIN_B9 -to LMS_TXNRX1
set_location_assignment PIN_B8 -to LMS_TXNRX2
set_location_assignment PIN_J7 -to FPGA_I2C_SDA
set_location_assignment PIN_H7 -to FPGA_I2C_SCL
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to FPGA_I2C_SDA
set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to FPGA_I2C_SCL
set_instance_assignment -name WEAK_PULL_UP_RESISTOR ON -to FPGA_I2C_SDA
set_instance_assignment -name WEAK_PULL_UP_RESISTOR ON -to FPGA_I2C_SCL
set_location_assignment PIN_B22 -to PWR_SRC
set_instance_assignment -name IO_STANDARD "2.5 V" -to PWR_SRC
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_CORE_LDO_EN
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMK_CLK
set_instance_assignment -name IO_STANDARD "2.5 V" -to TX1_2_LB_AT
set_instance_assignment -name IO_STANDARD "2.5 V" -to TX1_2_LB_H
set_instance_assignment -name IO_STANDARD "2.5 V" -to TX1_2_LB_L
set_instance_assignment -name IO_STANDARD "2.5 V" -to TX1_2_LB_SH
set_instance_assignment -name IO_STANDARD "2.5 V" -to TX2_2_LB_AT
set_instance_assignment -name IO_STANDARD "2.5 V" -to TX2_2_LB_L
set_instance_assignment -name IO_STANDARD "2.5 V" -to TX2_2_LB_SH
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_TXNRX2
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_TXNRX1
set_instance_assignment -name IO_STANDARD "2.5 V" -to TX2_2_LB_H
set_instance_assignment -name IO_STANDARD "2.5 V" -to FPGA_SPI0_LMS_SS
set_instance_assignment -name IO_STANDARD "2.5 V" -to FPGA_SPI0_MISO
set_instance_assignment -name IO_STANDARD "2.5 V" -to FPGA_SPI0_MOSI
set_instance_assignment -name IO_STANDARD "2.5 V" -to FPGA_SPI0_SCLK
set_instance_assignment -name CURRENT_STRENGTH_NEW "MINIMUM CURRENT" -to LMS_DIQ2_IQSEL2
set_instance_assignment -name CURRENT_STRENGTH_NEW "MINIMUM CURRENT" -to LMS_DIQ2_D[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MINIMUM CURRENT" -to LMS_DIQ2_D[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MINIMUM CURRENT" -to LMS_DIQ2_D[2]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MINIMUM CURRENT" -to LMS_DIQ2_D[3]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MINIMUM CURRENT" -to LMS_DIQ2_D[4]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MINIMUM CURRENT" -to LMS_DIQ2_D[5]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MINIMUM CURRENT" -to LMS_DIQ2_D[6]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MINIMUM CURRENT" -to LMS_DIQ2_D[7]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MINIMUM CURRENT" -to LMS_DIQ2_D[8]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MINIMUM CURRENT" -to LMS_DIQ2_D[9]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MINIMUM CURRENT" -to LMS_DIQ2_D[10]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MINIMUM CURRENT" -to LMS_DIQ2_D[11]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MINIMUM CURRENT" -to LMS_MCLK2
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to LMS_DIQ1_D[11]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to LMS_DIQ1_D[10]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to LMS_DIQ1_D[9]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to LMS_DIQ1_D[8]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to LMS_DIQ1_D[7]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to LMS_DIQ1_D[6]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to LMS_DIQ1_D[5]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to LMS_DIQ1_D[4]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to LMS_DIQ1_D[3]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to LMS_DIQ1_D[2]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to LMS_DIQ1_D[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to LMS_DIQ1_D[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to LMS_DIQ1_IQSEL
set_instance_assignment -name CURRENT_STRENGTH_NEW "MAXIMUM CURRENT" -to LMS_FCLK1
set_instance_assignment -name IO_STANDARD "2.5 V" -to LMS_MCLK1
set_instance_assignment -name IO_STANDARD "2.5 V" -to HW_VER[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to HW_VER[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to HW_VER[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to HW_VER[3]
set_location_assignment PIN_H8 -to FPGA_GPIO[0]
set_location_assignment PIN_H6 -to FPGA_GPIO[1]
set_location_assignment PIN_H2 -to FPGA_GPIO[2]
set_location_assignment PIN_H1 -to FPGA_GPIO[3]
set_location_assignment PIN_G4 -to FPGA_GPIO[4]
set_location_assignment PIN_G3 -to FPGA_GPIO[5]
set_location_assignment PIN_F2 -to FPGA_GPIO[6]
set_location_assignment PIN_F1 -to FPGA_GPIO[7]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to LMS_DIQ1_D[0]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 0 -to LMS_DIQ1_D[1]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to LMS_DIQ1_D[2]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to LMS_DIQ1_D[3]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to LMS_DIQ1_D[4]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to LMS_DIQ1_D[6]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 0 -to LMS_DIQ1_D[7]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 0 -to LMS_DIQ1_D[8]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to LMS_DIQ1_D[9]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to LMS_DIQ1_D[10]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 0 -to LMS_DIQ1_D[11]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[0]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[1]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[2]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[3]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[4]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[5]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[6]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[7]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[8]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[9]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[10]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[11]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[12]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[13]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[14]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[15]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[16]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[17]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[18]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[19]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[20]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[21]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[22]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[23]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[24]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[25]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[26]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[27]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[28]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[29]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[30]
set_instance_assignment -name CLOCK_TO_OUTPUT_DELAY 1 -to FX3_DQ[31]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[0]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[1]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[2]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[3]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[4]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[5]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[6]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[7]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[8]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[9]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[10]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[11]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[12]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[13]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[14]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[15]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[16]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[17]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[18]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[19]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[20]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[21]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[22]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[23]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[24]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[25]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[26]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[27]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[28]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[29]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[30]
set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to FX3_DQ[31]

set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top