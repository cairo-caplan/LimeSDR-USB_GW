--!  @file soc_wrapper
--! @author 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library altera_mf;

use altera_mf.altera_mf_components.all;

library orca;

library i2c_opencores;


entity soc_wrapper is
	generic(
		cpu_name	:	string := "pulpino_riscv"
	);
	port (
		-- Clock with 100 MHz frequency
		clk100					: in    std_logic;
		-- External FIFO
		exfifo_if_d				: in    std_logic_vector(31 downto 0);
		exfifo_if_rd			: out   std_logic;
		exfifo_if_rdempty		: in    std_logic;
		exfifo_of_d				: out   std_logic_vector(31 downto 0);
		exfifo_of_wr				: out   std_logic;
		exfifo_of_wrfull		: in    std_logic;
		exfifo_rst				: out   std_logic;
		-- LEDS - GPIO 8 bits output
		leds					: out   std_logic_vector(7 downto 0);
		-- lms_ctr_gpio - GPIO 4 bits output
		lms_ctr_gpio			: out   std_logic_vector(3 downto 0);
		-- SPI lms
		spi_lms_MISO			: in    std_logic;
		spi_lms_MOSI			: out   std_logic;
		spi_lms_SCLK			: out   std_logic;
		spi_lms_SS_n			: out   std_logic_vector(4 downto 0);
		-- SPI 1
		spi_1_MOSI				: out   std_logic;
		spi_1_SCLK				: out   std_logic;
		spi_1_SS_n				: out   std_logic_vector(1 downto 0);
		-- Switch - GPIO 8 bits input
		switch					: in    std_logic_vector(7 downto 0);
		-- I2C line
		i2c_scl					: inout std_logic;
		i2c_sda					: inout std_logic
			
	);
end entity soc_wrapper;

architecture RTL of soc_wrapper is
	
	type std_logic_2d_vector is array (natural range <>, natural range <>) of std_logic;
	
	component sld_virtual_jtag
        generic (
                lpm_hint        :       string := "UNUSED";
                lpm_type        :       string := "sld_virtual_jtag";
                sld_auto_instance_index :       string := "NO";
                sld_instance_index      :       natural := 0;
                sld_ir_width    :       natural := 1;
                sld_sim_action  :       string := "UNUSED";
                sld_sim_n_scan  :       natural := 0;
                sld_sim_total_length    :       natural := 0 );
        port(
                ir_in   :       out std_logic_vector(sld_ir_width-1 downto 0);
                ir_out  :       in std_logic_vector(sld_ir_width-1 downto 0);
                jtag_state_cdr  :       out std_logic;
                jtag_state_cir  :       out std_logic;
                jtag_state_e1dr :       out std_logic;
                jtag_state_e1ir :       out std_logic;
                jtag_state_e2dr :       out std_logic;
                jtag_state_e2ir :       out std_logic;
                jtag_state_pdr  :       out std_logic;
                jtag_state_pir  :       out std_logic;
                jtag_state_rti  :       out std_logic;
                jtag_state_sdr  :       out std_logic;
                jtag_state_sdrs :       out std_logic;
                jtag_state_sir  :       out std_logic;
                jtag_state_sirs :       out std_logic;
                jtag_state_tlr  :       out std_logic;
                jtag_state_udr  :       out std_logic;
                jtag_state_uir  :       out std_logic;
                tck     :       out std_logic;
                tdi     :       out std_logic;
                tdo     :       in std_logic;
                tms     :       out std_logic;
                virtual_state_cdr       :       out std_logic;
                virtual_state_cir       :       out std_logic;
                virtual_state_e1dr      :       out std_logic;
                virtual_state_e2dr      :       out std_logic;
                virtual_state_pdr       :       out std_logic;
                virtual_state_sdr       :       out std_logic;
                virtual_state_udr       :       out std_logic;
                virtual_state_uir       :       out std_logic
        );

end component;
	
	
	component pulpino_top is
	port(
	    -- Clock and Reset
	    clk					:	in	std_logic;
	    rst_n				:	in	std_logic;
	
	    clk_sel_i			:	in	std_logic;
	    clk_standalone_i	:	in	std_logic;
	    testmode_i			:	in	std_logic;
	    fetch_enable_i		:	in	std_logic;
	    scan_enable_i		:	in	std_logic;
	
	    --SPI Slave
	    spi_clk_i			:	in	std_logic;
	    spi_cs_i			:	in	std_logic;
	    spi_mode_o			:	out std_logic_vector(1 downto 0);
	    spi_sdo0_o			:	out	std_logic;
	    spi_sdo1_o			:	out	std_logic;
	    spi_sdo2_o			:	out	std_logic;
	    spi_sdo3_o			:	out	std_logic;
	    spi_sdi0_i			:	in	std_logic;
	    spi_sdi1_i			:	in	std_logic;
	    spi_sdi2_i			:	in	std_logic;
	    spi_sdi3_i			:	in	std_logic;
	
	    --SPI Master
	    spi_master_clk_o	:	out	std_logic;
	    spi_master_csn0_o	:	out	std_logic;
	    spi_master_csn1_o	:	out	std_logic;
	    spi_master_csn2_o	:	out	std_logic;
	    spi_master_csn3_o	:	out	std_logic;
	    spi_master_mode_o	:	out std_logic_vector(1 downto 0);
	    spi_master_sdo0_o	:	out	std_logic;
	    spi_master_sdo1_o	:	out	std_logic;
	    spi_master_sdo2_o	:	out	std_logic;
	    spi_master_sdo3_o	:	out	std_logic;
	    spi_master_sdi0_i	:	in	std_logic;
	    spi_master_sdi1_i	:	in	std_logic;
	    spi_master_sdi2_i	:	in	std_logic;
	    spi_master_sdi3_i	:	in	std_logic;
	
	    scl_pad_i			:	in	std_logic;
	    scl_pad_o			:	out	std_logic;
	    scl_padoen_o		:	out	std_logic;
	    sda_pad_i			:	in	std_logic;
	    sda_pad_o			:	out	std_logic;
	    sda_padoen_o		:	out	std_logic;
	
	    uart_tx				:	out	std_logic;
	    uart_rx				:	in	std_logic;
	    uart_rts			:	out	std_logic;
	    uart_dtr			:	out	std_logic;
	    uart_cts			:	in	std_logic;
	    uart_dsr			:	in	std_logic;
	
	    gpio_in				:	in	std_logic_vector(31 downto 0);
	    gpio_out			:	out	std_logic_vector(31 downto 0);
	    gpio_dir			:	out	std_logic_vector(31 downto 0);
	   	--gpio_padcfg			:	out	std_logic_2d_vector(31 downto 0, 5 downto 0);
	
	    -- JTAG signals
	    tck_i				:	in	std_logic;
	    trstn_i				:	in	std_logic;
	    tms_i				:	in	std_logic;
	    tdi_i				:	in	std_logic;
	    tdo_o				:	out	std_logic;
	
	    -- PULPino specific pad config
	    --pad_cfg_o			:	out	std_logic_2d_vector(31 downto 0, 5 downto 0);
	    pad_mux_o			:	out	std_logic_vector(31 downto 0)
	);
end component pulpino_top;


component altera_virtual_jtag is 
	port(
		tck_o				:	out std_logic;
		debug_tdo_i			:	in std_logic;
		tdi_o				:	out std_logic;
		test_logic_reset_o	:	out std_logic;
		run_test_idle_o		:	out std_logic;
		shift_dr_o			:	out std_logic;
		capture_dr_o		:	out std_logic;
		pause_dr_o			:	out std_logic;
		update_dr_o			:	out std_logic;
		debug_select_o		:	out std_logic
	);
end component altera_virtual_jtag;
	
	
	
	component picorv32_wb is
		generic(
			ENABLE_COUNTERS : integer := 1;
			ENABLE_COUNTERS64 : integer := 1;
			ENABLE_REGS_16_31 : integer := 1;
			ENABLE_REGS_DUALPORT : integer := 1;
			TWO_STAGE_SHIFT : integer := 1;
			BARREL_SHIFTER : integer := 0;
			TWO_CYCLE_COMPARE : integer := 0;
			TWO_CYCLE_ALU : integer := 0;
			COMPRESSED_ISA : integer := 0;
			CATCH_MISALIGN : integer := 1;
			CATCH_ILLINSN : integer := 1;
			ENABLE_PCPI : integer := 0;
			ENABLE_MUL : integer := 0;
			ENABLE_FAST_MUL : integer := 0;
			ENABLE_DIV : integer := 0;
			ENABLE_IRQ : integer := 0;
			ENABLE_IRQ_QREGS : integer := 1;
			ENABLE_IRQ_TIMER : integer := 1;
			ENABLE_TRACE : integer := 0;
			REGS_INIT_ZERO : integer := 0;
			MASKED_IRQ : std_logic_vector(31 downto 0) := x"0000_0000";
			LATCHED_IRQ : std_logic_vector(31 downto 0) := x"ffff_ffff";
			PROGADDR_RESET : std_logic_vector(31 downto 0) := x"0000_0000";
			PROGADDR_IRQ : std_logic_vector(31 downto 0) := x"0000_0010";
			STACKADDR : std_logic_vector(31 downto 0) := x"ffff_ffff"
		);
		port (
			eoi : out std_logic_vector(31 downto 0);
			irq : in std_logic_vector(31 downto 0);
			mem_instr : out std_logic;
			pcpi_insn : out std_logic_vector(31 downto 0);
			pcpi_rd : in std_logic_vector(31 downto 0);
			pcpi_ready : in std_logic;
			pcpi_rs1 : out std_logic_vector(31 downto 0);
			pcpi_rs2 : out std_logic_vector(31 downto 0);
			pcpi_valid : out std_logic;
			pcpi_wait : in std_logic;
			pcpi_wr : in std_logic;
			trace_data : out std_logic_vector(35 downto 0);
			trace_valid : out std_logic;
			trap : out std_logic;
			wb_clk_i : in std_logic;
			wb_rst_i : in std_logic;
			wbm_ack_i : in std_logic;
			wbm_adr_o : out std_logic_vector(31 downto 0);
			wbm_cyc_o : out std_logic;
			wbm_dat_i : in std_logic_vector(31 downto 0);
			wbm_dat_o : out std_logic_vector(31 downto 0);
			wbm_sel_o : out std_logic_vector(3 downto 0);
			wbm_stb_o : out std_logic;
			wbm_we_o : out std_logic
		);
	end component picorv32_wb; 
	
	
	
	component wb_ram is
		generic(
			dw		:	integer := 32;
			depth	:	integer	:= 256;
			aw		:	integer := 8;--$clog2(depth)
			memfile:	string := ""	
		);
		port(
			wb_clk_i	:	in	std_logic;
			wb_rst_i	:	in	std_logic;
			--
			wb_adr_i	:	in	std_logic_vector(aw-1 downto 0);
			wb_dat_i	:	in	std_logic_vector(dw-1 downto 0);
			wb_sel_i	:	in	std_logic_vector(3 downto 0);
			wb_we_i		:	in	std_logic;
			wb_bte_i	:	in	std_logic_vector(1 downto 0);
			wb_cti_i	:	in	std_logic_vector(2 downto 0);
			wb_cyc_i	:	in	std_logic;
			wb_stb_i	:	in	std_logic;
			--
			wb_ack_o	:	out	std_logic;
			wb_err_o	:	out	std_logic;
			wb_dat_o	:	out	std_logic_vector(dw-1 downto 0)	
			);
	   end component wb_ram;
	
	
	 
	 component i2c_master_top
		port(
			
			wb_clk_i		:	in std_logic;
			wb_rst_i		:	in std_logic;
			arst_i		:	in	std_logic;
			wb_adr_i	:	in std_logic_vector(2 downto 0);
			wb_dat_i	:	in	std_logic_vector(7 downto 0);
			wb_dat_o	:	out	std_logic_vector(7 downto 0);
			wb_we_i		:	in	std_logic;
			wb_stb_i	:	in	std_logic;
			wb_cyc_i	:	in	std_logic;
			wb_ack_o	:	out	std_logic;
			wb_inta_o	:	out	std_logic;
			
			scl_pad_i	:	in	std_logic; -- SCL-line input
			scl_pad_o	:	out	std_logic; -- SCL-line output (always 1'b0)
			scl_padoen_o:	out	std_logic; -- SCL-line output enable (active low)
			--
			sda_pad_i	:	in	std_logic; -- SDA-line input
			sda_pad_o	:	out	std_logic; -- SDA-line output (always 1'b0)
			sda_padoen_o:	out	std_logic  -- SDA-line output enable (active low)
			
			
		);
	end component i2c_master_top;

	component simple_spi
		generic(
			SS_WIDTH	:	integer :=1
		);
		port(
			clk_i	:	in	std_logic;
			rst_i	:	in	std_logic;
			cyc_i	:	in	std_logic;
			stb_i	:	in	std_logic;
			adr_i	:	in	std_logic_vector(2 downto 0);
			we_i	:	in	std_logic;
			dat_i	:	in	std_logic_vector(7 downto 0);
			dat_o	:	out	std_logic_vector(7 downto 0);
			ack_o	:	out	std_logic;
			inta_o	:	out	std_logic;
			--SPI Port
			sck_o	:	out	std_logic;
			ss_o	:	out	std_logic_vector(SS_WIDTH-1 downto 0);
			mosi_o	:	out	std_logic;
			miso_i	:	in	std_logic	
		);
	end component simple_spi;
	
	component gpio
		port(
			wb_clk		:	in std_logic;
			wb_rst		:	in std_logic;
			wb_adr_i	:	in std_logic;
			wb_dat_i	:	in	std_logic_vector(7 downto 0);
			wb_we_i		:	in	std_logic;
			wb_cyc_i	:	in	std_logic;
			wb_stb_i	:	in	std_logic;
			wb_cti_i	:	in	std_logic_vector(2 downto 0);
			wb_bte_i	:	in	std_logic_vector(1 downto 0);
			wb_dat_o	:	out	std_logic_vector(7 downto 0);
			wb_ack_o	:	out	std_logic;
			wb_err_o	:	out	std_logic;
			wb_rty_o	:	out	std_logic;
			
			gpio_i		:	in	std_logic_vector(7 downto 0);
			gpio_o		:	out	std_logic_vector(7 downto 0);
			gpio_dir_o	:	out	std_logic_vector(7 downto 0)
		);
	end component gpio;
	
	
	
	component avfifo
		generic(width : integer := 32);
		port(
			clk            : in  std_logic;
			rsi_nrst       : in  std_logic;
			chipselect     : in  std_logic;
			address        : in  std_logic_vector(1 downto 0);
			write          : in  std_logic;
			writedata      : in  std_logic_vector(width - 1 downto 0);
			read           : in  std_logic;
			readdata       : out std_logic_vector(width - 1 downto 0);
			coe_of_d       : out std_logic_vector(31 downto 0);
			coe_of_wr      : out std_logic;
			coe_of_wrfull  : in  std_logic;
			coe_if_d       : in  std_logic_vector(31 downto 0);
			coe_if_rd      : out std_logic;
			coe_if_rdempty : in  std_logic;
			coe_fifo_rst   : out std_logic
		);
	end component avfifo;


	
	component riscv_wb_intercon
		port (
			wb_Av_FIFO_Int0_ack_i : in std_logic;
    wb_Av_FIFO_Int0_adr_o : out std_logic_vector(31 downto 0);
    wb_Av_FIFO_Int0_bte_o : out std_logic_vector(1 downto 0);
    wb_Av_FIFO_Int0_cti_o : out std_logic_vector(2 downto 0);
    wb_Av_FIFO_Int0_cyc_o : out std_logic;
    wb_Av_FIFO_Int0_dat_i : in std_logic_vector(31 downto 0);
    wb_Av_FIFO_Int0_dat_o : out std_logic_vector(31 downto 0);
    wb_Av_FIFO_Int0_err_i : in std_logic;
    wb_Av_FIFO_Int0_rty_i : in std_logic;
    wb_Av_FIFO_Int0_sel_o : out std_logic_vector(3 downto 0);
    wb_Av_FIFO_Int0_stb_o : out std_logic;
    wb_Av_FIFO_Int0_we_o : out std_logic;
    wb_clk_i : in std_logic;
    wb_dbus_ack_o : out std_logic;
    wb_dbus_adr_i : in std_logic_vector(31 downto 0);
    wb_dbus_bte_i : in std_logic_vector(1 downto 0);
    wb_dbus_cti_i : in std_logic_vector(2 downto 0);
    wb_dbus_cyc_i : in std_logic;
    wb_dbus_dat_i : in std_logic_vector(31 downto 0);
    wb_dbus_dat_o : out std_logic_vector(31 downto 0);
    wb_dbus_err_o : out std_logic;
    wb_dbus_rty_o : out std_logic;
    wb_dbus_sel_i : in std_logic_vector(3 downto 0);
    wb_dbus_stb_i : in std_logic;
    wb_dbus_we_i : in std_logic;
    wb_i2c_opencores_0_ack_i : in std_logic;
    wb_i2c_opencores_0_adr_o : out std_logic_vector(31 downto 0);
    wb_i2c_opencores_0_bte_o : out std_logic_vector(1 downto 0);
    wb_i2c_opencores_0_cti_o : out std_logic_vector(2 downto 0);
    wb_i2c_opencores_0_cyc_o : out std_logic;
    wb_i2c_opencores_0_dat_i : in std_logic_vector(7 downto 0);
    wb_i2c_opencores_0_dat_o : out std_logic_vector(7 downto 0);
    wb_i2c_opencores_0_err_i : in std_logic;
    wb_i2c_opencores_0_rty_i : in std_logic;
    wb_i2c_opencores_0_sel_o : out std_logic_vector(3 downto 0);
    wb_i2c_opencores_0_stb_o : out std_logic;
    wb_i2c_opencores_0_we_o : out std_logic;
    wb_ibus_ack_o : out std_logic;
    wb_ibus_adr_i : in std_logic_vector(31 downto 0);
    wb_ibus_bte_i : in std_logic_vector(1 downto 0);
    wb_ibus_cti_i : in std_logic_vector(2 downto 0);
    wb_ibus_cyc_i : in std_logic;
    wb_ibus_dat_i : in std_logic_vector(31 downto 0);
    wb_ibus_dat_o : out std_logic_vector(31 downto 0);
    wb_ibus_err_o : out std_logic;
    wb_ibus_rty_o : out std_logic;
    wb_ibus_sel_i : in std_logic_vector(3 downto 0);
    wb_ibus_stb_i : in std_logic;
    wb_ibus_we_i : in std_logic;
    wb_leds_ack_i : in std_logic;
    wb_leds_adr_o : out std_logic_vector(31 downto 0);
    wb_leds_bte_o : out std_logic_vector(1 downto 0);
    wb_leds_cti_o : out std_logic_vector(2 downto 0);
    wb_leds_cyc_o : out std_logic;
    wb_leds_dat_i : in std_logic_vector(7 downto 0);
    wb_leds_dat_o : out std_logic_vector(7 downto 0);
    wb_leds_err_i : in std_logic;
    wb_leds_rty_i : in std_logic;
    wb_leds_sel_o : out std_logic_vector(3 downto 0);
    wb_leds_stb_o : out std_logic;
    wb_leds_we_o : out std_logic;
    wb_lms_ctr_gpio_ack_i : in std_logic;
    wb_lms_ctr_gpio_adr_o : out std_logic_vector(31 downto 0);
    wb_lms_ctr_gpio_bte_o : out std_logic_vector(1 downto 0);
    wb_lms_ctr_gpio_cti_o : out std_logic_vector(2 downto 0);
    wb_lms_ctr_gpio_cyc_o : out std_logic;
    wb_lms_ctr_gpio_dat_i : in std_logic_vector(7 downto 0);
    wb_lms_ctr_gpio_dat_o : out std_logic_vector(7 downto 0);
    wb_lms_ctr_gpio_err_i : in std_logic;
    wb_lms_ctr_gpio_rty_i : in std_logic;
    wb_lms_ctr_gpio_sel_o : out std_logic_vector(3 downto 0);
    wb_lms_ctr_gpio_stb_o : out std_logic;
    wb_lms_ctr_gpio_we_o : out std_logic;
    wb_oc_mem_dbus_ack_i : in std_logic;
    wb_oc_mem_dbus_adr_o : out std_logic_vector(31 downto 0);
    wb_oc_mem_dbus_bte_o : out std_logic_vector(1 downto 0);
    wb_oc_mem_dbus_cti_o : out std_logic_vector(2 downto 0);
    wb_oc_mem_dbus_cyc_o : out std_logic;
    wb_oc_mem_dbus_dat_i : in std_logic_vector(31 downto 0);
    wb_oc_mem_dbus_dat_o : out std_logic_vector(31 downto 0);
    wb_oc_mem_dbus_err_i : in std_logic;
    wb_oc_mem_dbus_rty_i : in std_logic;
    wb_oc_mem_dbus_sel_o : out std_logic_vector(3 downto 0);
    wb_oc_mem_dbus_stb_o : out std_logic;
    wb_oc_mem_dbus_we_o : out std_logic;
    wb_oc_mem_ibus_ack_i : in std_logic;
    wb_oc_mem_ibus_adr_o : out std_logic_vector(31 downto 0);
    wb_oc_mem_ibus_bte_o : out std_logic_vector(1 downto 0);
    wb_oc_mem_ibus_cti_o : out std_logic_vector(2 downto 0);
    wb_oc_mem_ibus_cyc_o : out std_logic;
    wb_oc_mem_ibus_dat_i : in std_logic_vector(31 downto 0);
    wb_oc_mem_ibus_dat_o : out std_logic_vector(31 downto 0);
    wb_oc_mem_ibus_err_i : in std_logic;
    wb_oc_mem_ibus_rty_i : in std_logic;
    wb_oc_mem_ibus_sel_o : out std_logic_vector(3 downto 0);
    wb_oc_mem_ibus_stb_o : out std_logic;
    wb_oc_mem_ibus_we_o : out std_logic;
    wb_rst_i : in std_logic;
    wb_spi_1_ADF_ack_i : in std_logic;
    wb_spi_1_ADF_adr_o : out std_logic_vector(31 downto 0);
    wb_spi_1_ADF_bte_o : out std_logic_vector(1 downto 0);
    wb_spi_1_ADF_cti_o : out std_logic_vector(2 downto 0);
    wb_spi_1_ADF_cyc_o : out std_logic;
    wb_spi_1_ADF_dat_i : in std_logic_vector(31 downto 0);
    wb_spi_1_ADF_dat_o : out std_logic_vector(31 downto 0);
    wb_spi_1_ADF_err_i : in std_logic;
    wb_spi_1_ADF_rty_i : in std_logic;
    wb_spi_1_ADF_sel_o : out std_logic_vector(3 downto 0);
    wb_spi_1_ADF_stb_o : out std_logic;
    wb_spi_1_ADF_we_o : out std_logic;
    wb_spi_1_DAC_ack_i : in std_logic;
    wb_spi_1_DAC_adr_o : out std_logic_vector(31 downto 0);
    wb_spi_1_DAC_bte_o : out std_logic_vector(1 downto 0);
    wb_spi_1_DAC_cti_o : out std_logic_vector(2 downto 0);
    wb_spi_1_DAC_cyc_o : out std_logic;
    wb_spi_1_DAC_dat_i : in std_logic_vector(31 downto 0);
    wb_spi_1_DAC_dat_o : out std_logic_vector(31 downto 0);
    wb_spi_1_DAC_err_i : in std_logic;
    wb_spi_1_DAC_rty_i : in std_logic;
    wb_spi_1_DAC_sel_o : out std_logic_vector(3 downto 0);
    wb_spi_1_DAC_stb_o : out std_logic;
    wb_spi_1_DAC_we_o : out std_logic;
    wb_spi_lms_ack_i : in std_logic;
    wb_spi_lms_adr_o : out std_logic_vector(31 downto 0);
    wb_spi_lms_bte_o : out std_logic_vector(1 downto 0);
    wb_spi_lms_cti_o : out std_logic_vector(2 downto 0);
    wb_spi_lms_cyc_o : out std_logic;
    wb_spi_lms_dat_i : in std_logic_vector(31 downto 0);
    wb_spi_lms_dat_o : out std_logic_vector(31 downto 0);
    wb_spi_lms_err_i : in std_logic;
    wb_spi_lms_rty_i : in std_logic;
    wb_spi_lms_sel_o : out std_logic_vector(3 downto 0);
    wb_spi_lms_stb_o : out std_logic;
    wb_spi_lms_we_o : out std_logic;
    wb_switch_ack_i : in std_logic;
    wb_switch_adr_o : out std_logic_vector(31 downto 0);
    wb_switch_bte_o : out std_logic_vector(1 downto 0);
    wb_switch_cti_o : out std_logic_vector(2 downto 0);
    wb_switch_cyc_o : out std_logic;
    wb_switch_dat_i : in std_logic_vector(7 downto 0);
    wb_switch_dat_o : out std_logic_vector(7 downto 0);
    wb_switch_err_i : in std_logic;
    wb_switch_rty_i : in std_logic;
    wb_switch_sel_o : out std_logic_vector(3 downto 0);
    wb_switch_stb_o : out std_logic;
    wb_switch_we_o : out std_logic;
    wb_reset_gpio_ack_i : in std_logic;
    wb_reset_gpio_adr_o : out std_logic_vector(31 downto 0);
    wb_reset_gpio_bte_o : out std_logic_vector(1 downto 0);
    wb_reset_gpio_cti_o : out std_logic_vector(2 downto 0);
    wb_reset_gpio_cyc_o : out std_logic;
    wb_reset_gpio_dat_i : in std_logic_vector(7 downto 0);
    wb_reset_gpio_dat_o : out std_logic_vector(7 downto 0);
    wb_reset_gpio_err_i : in std_logic;
    wb_reset_gpio_rty_i : in std_logic;
    wb_reset_gpio_sel_o : out std_logic_vector(3 downto 0);
    wb_reset_gpio_stb_o : out std_logic;
    wb_reset_gpio_we_o : out std_logic
		  );
	end component riscv_wb_intercon;
	
	
	    component lms_orca is
        port (
            clk_clk                                     : in    std_logic                     := 'X';             -- clk
            controlled_reset_external_connection_export : out   std_logic;                                        -- export
            exfifo_if_d_export                          : in    std_logic_vector(31 downto 0) := (others => 'X'); -- export
            exfifo_if_rd_export                         : out   std_logic;                                        -- export
            exfifo_if_rdempty_export                    : in    std_logic                     := 'X';             -- export
            exfifo_of_d_export                          : out   std_logic_vector(31 downto 0);                    -- export
            exfifo_of_wr_export                         : out   std_logic;                                        -- export
            exfifo_of_wrfull_export                     : in    std_logic                     := 'X';             -- export
            exfifo_rst_export                           : out   std_logic;                                        -- export
            i2c_opencores_0_interrupt_sender_irq        : out   std_logic;                                        -- irq
            in_reset_reset_n                            : in    std_logic                     := 'X';             -- reset_n
            leds_external_connection_export             : out   std_logic_vector(7 downto 0);                     -- export
            lms_ctr_gpio_external_connection_export     : out   std_logic_vector(3 downto 0);                     -- export
            scl_exp_export                              : inout std_logic                     := 'X';             -- export
            sda_exp_export                              : inout std_logic                     := 'X';             -- export
            spi_1_dac_external_MISO                     : in    std_logic                     := 'X';             -- MISO
            spi_1_dac_external_MOSI                     : out   std_logic;                                        -- MOSI
            spi_1_dac_external_SCLK                     : out   std_logic;                                        -- SCLK
            spi_1_dac_external_SS_n                     : out   std_logic_vector(1 downto 0);                     -- SS_n
            spi_1_dac_irq_irq                           : out   std_logic;                                        -- irq
            spi_lms_external_MISO                       : in    std_logic                     := 'X';             -- MISO
            spi_lms_external_MOSI                       : out   std_logic;                                        -- MOSI
            spi_lms_external_SCLK                       : out   std_logic;                                        -- SCLK
            spi_lms_external_SS_n                       : out   std_logic_vector(4 downto 0);                     -- SS_n
            spi_lms_irq_irq                             : out   std_logic;                                        -- irq
            switch_external_connection_export           : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- export
            vectorblox_orca_0_global_interrupts_export  : in    std_logic_vector(0 downto 0)  := (others => 'X')  -- export
        );
    end component lms_orca;
	    
	    
	    signal internal_rst : std_logic;

	signal i2c_opencores_0_interrupt_sender_irq : std_logic;
	signal spi_lms_irq_irq : std_logic;
	signal spi_1_dac_irq_irq : std_logic;
	signal vectorblox_orca_0_global_interrupts_export : std_logic_vector(0 downto 0);
	signal in_reset_reset_n : std_logic;
	signal controlled_reset_external_connection_export : std_logic;
	signal wb_Av_FIFO_Int0_ack : std_logic := '0';
	signal wb_Av_FIFO_Int0_adr : std_logic_vector(31 downto 0);
	signal wb_Av_FIFO_Int0_bte : std_logic_vector(1 downto 0);
	signal wb_Av_FIFO_Int0_cti : std_logic_vector(2 downto 0) := (others=>'0');
	signal wb_Av_FIFO_Int0_cyc : std_logic;
	signal wb_Av_FIFO_Int0_dat_i : std_logic_vector(31 downto 0);
	signal wb_Av_FIFO_Int0_dat_o : std_logic_vector(31 downto 0);
	signal wb_Av_FIFO_Int0_err : std_logic := '0';
	signal wb_Av_FIFO_Int0_rty : std_logic := '0';
	signal wb_Av_FIFO_Int0_sel : std_logic_vector(3 downto 0) := (others=>'0');
	signal wb_Av_FIFO_Int0_stb : std_logic;
	signal wb_Av_FIFO_Int0_we : std_logic;
	signal wb_clk : std_logic;
	signal wb_dbus_ack : std_logic;
	signal wb_dbus_adr : std_logic_vector(31 downto 0);
	signal wb_dbus_bte : std_logic_vector(1 downto 0);
	signal wb_dbus_cti : std_logic_vector(2 downto 0);
	signal wb_dbus_cyc : std_logic;
	signal wb_dbus_dat_i : std_logic_vector(31 downto 0);
	signal wb_dbus_dat_o : std_logic_vector(31 downto 0);
	signal wb_dbus_err : std_logic;
	signal wb_dbus_rty : std_logic;
	signal wb_dbus_sel : std_logic_vector(3 downto 0);
	signal wb_dbus_stb : std_logic;
	signal wb_dbus_we : std_logic;
	signal wb_i2c_opencores_0_ack : std_logic;
	signal wb_i2c_opencores_0_adr : std_logic_vector(31 downto 0);
	signal wb_i2c_opencores_0_bte : std_logic_vector(1 downto 0);
	signal wb_i2c_opencores_0_cti : std_logic_vector(2 downto 0);
	signal wb_i2c_opencores_0_cyc : std_logic;
	signal wb_i2c_opencores_0_dat_i : std_logic_vector(7 downto 0);
	signal wb_i2c_opencores_0_dat_o : std_logic_vector(7 downto 0);
	signal wb_i2c_opencores_0_err : std_logic := '0';
	signal wb_i2c_opencores_0_rty : std_logic := '0';
	signal wb_i2c_opencores_0_sel : std_logic_vector(3 downto 0);
	signal wb_i2c_opencores_0_stb : std_logic;
	signal wb_i2c_opencores_0_we : std_logic;
	signal wb_ibus_ack : std_logic;
	signal wb_ibus_adr : std_logic_vector(31 downto 0);
	signal wb_ibus_bte : std_logic_vector(1 downto 0);
	signal wb_ibus_cti : std_logic_vector(2 downto 0);
	signal wb_ibus_cyc : std_logic;
	signal wb_ibus_dat_i : std_logic_vector(31 downto 0);
	signal wb_ibus_dat_o : std_logic_vector(31 downto 0);
	signal wb_ibus_err : std_logic;
	signal wb_ibus_rty : std_logic;
	signal wb_ibus_sel : std_logic_vector(3 downto 0);
	signal wb_ibus_stb : std_logic;
	signal wb_ibus_we : std_logic;
	signal wb_leds_ack : std_logic;
	signal wb_leds_adr : std_logic_vector(31 downto 0);
	signal wb_leds_bte : std_logic_vector(1 downto 0);
	signal wb_leds_cti : std_logic_vector(2 downto 0);
	signal wb_leds_cyc : std_logic;
	signal wb_leds_dat_i : std_logic_vector(7 downto 0);
	signal wb_leds_dat_o : std_logic_vector(7 downto 0);
	signal wb_leds_err : std_logic;
	signal wb_leds_rty : std_logic;
	signal wb_leds_sel : std_logic_vector(3 downto 0);
	signal wb_leds_stb : std_logic;
	signal wb_leds_we : std_logic;
	signal wb_lms_ctr_gpio_ack : std_logic;
	signal wb_lms_ctr_gpio_adr : std_logic_vector(31 downto 0);
	signal wb_lms_ctr_gpio_bte : std_logic_vector(1 downto 0);
	signal wb_lms_ctr_gpio_cti : std_logic_vector(2 downto 0);
	signal wb_lms_ctr_gpio_cyc : std_logic;
	signal wb_lms_ctr_gpio_dat_i : std_logic_vector(7 downto 0);
	signal wb_lms_ctr_gpio_dat_o : std_logic_vector(7 downto 0);
	signal wb_lms_ctr_gpio_err : std_logic;
	signal wb_lms_ctr_gpio_rty : std_logic;
	signal wb_lms_ctr_gpio_sel : std_logic_vector(3 downto 0);
	signal wb_lms_ctr_gpio_stb : std_logic;
	signal wb_lms_ctr_gpio_we : std_logic;
	signal wb_oc_mem_dbus_ack : std_logic;
	signal wb_oc_mem_dbus_adr : std_logic_vector(31 downto 0);
	signal wb_oc_mem_dbus_bte : std_logic_vector(1 downto 0);
	signal wb_oc_mem_dbus_cti : std_logic_vector(2 downto 0);
	signal wb_oc_mem_dbus_cyc : std_logic;
	signal wb_oc_mem_dbus_dat_i : std_logic_vector(31 downto 0);
	signal wb_oc_mem_dbus_dat_o : std_logic_vector(31 downto 0);
	signal wb_oc_mem_dbus_err : std_logic;
	signal wb_oc_mem_dbus_rty : std_logic;
	signal wb_oc_mem_dbus_sel : std_logic_vector(3 downto 0);
	signal wb_oc_mem_dbus_stb : std_logic;
	signal wb_oc_mem_dbus_we : std_logic;
	signal wb_oc_mem_ibus_ack : std_logic;
	signal wb_oc_mem_ibus_adr : std_logic_vector(31 downto 0);
	signal wb_oc_mem_ibus_bte : std_logic_vector(1 downto 0);
	signal wb_oc_mem_ibus_cti : std_logic_vector(2 downto 0);
	signal wb_oc_mem_ibus_cyc : std_logic;
	signal wb_oc_mem_ibus_dat_i : std_logic_vector(31 downto 0);
	signal wb_oc_mem_ibus_dat_o : std_logic_vector(31 downto 0);
	signal wb_oc_mem_ibus_err : std_logic;
	signal wb_oc_mem_ibus_rty : std_logic;
	signal wb_oc_mem_ibus_sel : std_logic_vector(3 downto 0);
	signal wb_oc_mem_ibus_stb : std_logic;
	signal wb_oc_mem_ibus_we : std_logic;

	signal wb_spi_1_ADF_ack : std_logic;
	signal wb_spi_1_ADF_adr : std_logic_vector(31 downto 0);
	signal wb_spi_1_ADF_bte : std_logic_vector(1 downto 0);
	signal wb_spi_1_ADF_cti : std_logic_vector(2 downto 0);
	signal wb_spi_1_ADF_cyc : std_logic;
	signal wb_spi_1_ADF_dat_i : std_logic_vector(31 downto 0);
	signal wb_spi_1_ADF_dat_o : std_logic_vector(31 downto 0);
	signal wb_spi_1_ADF_err : std_logic;
	signal wb_spi_1_ADF_rty : std_logic;
	signal wb_spi_1_ADF_sel : std_logic_vector(3 downto 0);
	signal wb_spi_1_ADF_stb : std_logic;
	signal wb_spi_1_ADF_we : std_logic;
	signal wb_spi_1_DAC_ack : std_logic;
	signal wb_spi_1_DAC_adr : std_logic_vector(31 downto 0);
	signal wb_spi_1_DAC_bte : std_logic_vector(1 downto 0);
	signal wb_spi_1_DAC_cti : std_logic_vector(2 downto 0);
	signal wb_spi_1_DAC_cyc : std_logic;
	signal wb_spi_1_DAC_dat_i : std_logic_vector(31 downto 0);
	signal wb_spi_1_DAC_dat_o : std_logic_vector(31 downto 0);
	signal wb_spi_1_DAC_err : std_logic;
	signal wb_spi_1_DAC_rty : std_logic;
	signal wb_spi_1_DAC_sel : std_logic_vector(3 downto 0);
	signal wb_spi_1_DAC_stb : std_logic;
	signal wb_spi_1_DAC_we : std_logic;
	signal wb_spi_lms_ack : std_logic;
	signal wb_spi_lms_adr : std_logic_vector(31 downto 0);
	signal wb_spi_lms_bte : std_logic_vector(1 downto 0);
	signal wb_spi_lms_cti : std_logic_vector(2 downto 0);
	signal wb_spi_lms_cyc : std_logic;
	signal wb_spi_lms_dat_i : std_logic_vector(31 downto 0);
	signal wb_spi_lms_dat_o : std_logic_vector(31 downto 0);
	signal wb_spi_lms_err : std_logic;
	signal wb_spi_lms_rty : std_logic;
	signal wb_spi_lms_sel : std_logic_vector(3 downto 0);
	signal wb_spi_lms_stb : std_logic;
	signal wb_spi_lms_we : std_logic;
	signal wb_switch_ack : std_logic;
	signal wb_switch_adr : std_logic_vector(31 downto 0);
	signal wb_switch_bte : std_logic_vector(1 downto 0);
	signal wb_switch_cti : std_logic_vector(2 downto 0);
	signal wb_switch_cyc : std_logic;
	signal wb_switch_dat_i : std_logic_vector(7 downto 0);
	signal wb_switch_dat_o : std_logic_vector(7 downto 0);
	signal wb_switch_err : std_logic;
	signal wb_switch_rty : std_logic;
	signal wb_switch_sel : std_logic_vector(3 downto 0);
	signal wb_switch_stb : std_logic;
	signal wb_switch_we : std_logic;

	signal i2c_irq : std_logic;
	signal scl_pad_i : std_logic;
	signal scl_pad_o : std_logic;
	signal scl_padoen_o : std_logic;
	signal sda_pad_i : std_logic;
	signal sda_pad_o : std_logic;
	signal sda_padoen_o : std_logic;
	signal spi_1_irq : std_logic;
	signal spi_lms_irq : std_logic;
	signal av_nrst : std_logic;
	signal av_write : std_logic;
	signal av_read : std_logic;
	signal lms_ctr_gpio_full : std_logic_vector(7 downto 0);
	signal leds_full : std_logic_vector(7 downto 0);
	signal wb_reset_gpio_adr_o : std_logic_vector(31 downto 0);
	signal wb_reset_gpio_bte_o : std_logic_vector(1 downto 0);
	signal wb_reset_gpio_cti_o : std_logic_vector(2 downto 0);
	signal wb_reset_gpio_cyc_o : std_logic;
	signal wb_reset_gpio_dat_o : std_logic_vector(7 downto 0);
	signal wb_reset_gpio_sel_o : std_logic_vector(3 downto 0);
	signal wb_reset_gpio_stb_o : std_logic;
	signal wb_reset_gpio_we_o : std_logic;
	signal wb_reset_gpio_ack_i : std_logic;
	signal wb_reset_gpio_dat_i : std_logic_vector(7 downto 0);
	signal wb_reset_gpio_err_i : std_logic;
	signal wb_reset_gpio_rty_i : std_logic;
	signal reset_gpio : std_logic_vector(7 downto 0);
	signal internal_rst_n : std_logic;
	signal irq : std_logic_vector(31 downto 0);
	

	signal packed_gpio_in : std_logic_vector(31 downto 0);
	signal packed_gpio_out : std_logic_vector(31 downto 0);
	signal rst_n : std_logic;
	signal spi_master_sdo0_o : std_logic := '0';
	signal spi_master_sdo1_o : std_logic := '0';
	signal spi_master_sdo2_o : std_logic := '0';
	signal spi_master_sdo3_o : std_logic := '0';
	signal spi_master_sdi0_i : std_logic := '0';
	signal spi_master_sdi1_i : std_logic := '0';
	signal spi_master_sdi2_i : std_logic := '0';
	signal spi_master_sdi3_i : std_logic := '0';
	
	signal spi_lms_SS_n_int	:	std_logic_vector(3 downto 0);
	signal spi_master_clk_o : std_logic;
	signal leds_int : std_logic_vector(7 downto 0) ;
	signal lms_ctr_gpio_int : std_logic_vector(3 downto 0);
	signal tck : std_logic;
	signal debug_tdo : std_logic;
	signal tdi : std_logic;
	signal test_logic_reset : std_logic;
	signal tdo : std_logic;
	signal tms : std_logic;
	
	
	 
begin
	
	gen_pulpino : if cpu_name="pulpino_riscv" generate
		
		rst_n <= '1';
		pulpino_top_inst : pulpino_top
			port map(
				clk               => clk100,
				rst_n             => rst_n,
				clk_sel_i         => '0',
				clk_standalone_i  => '1',
				testmode_i        => '1',
				fetch_enable_i    => '1',
				scan_enable_i     => '1',
				spi_clk_i         => '0',
				spi_cs_i          => '1',
				spi_mode_o        => open,
				spi_sdo0_o        => open,
				spi_sdo1_o        => open,
				spi_sdo2_o        => open,
				spi_sdo3_o        => open,
				spi_sdi0_i        => '0',
				spi_sdi1_i        => '0',
				spi_sdi2_i        => '0',
				spi_sdi3_i        => '0',
				spi_master_clk_o  => spi_master_clk_o,
				spi_master_csn0_o => spi_lms_SS_n_int(0),
				spi_master_csn1_o => spi_lms_SS_n_int(1),
				spi_master_csn2_o => spi_lms_SS_n_int(2),
				spi_master_csn3_o => spi_lms_SS_n_int(3),
				spi_master_mode_o => open,
				spi_master_sdo0_o => spi_master_sdo0_o,
				spi_master_sdo1_o => spi_master_sdo1_o,
				spi_master_sdo2_o => spi_master_sdo2_o,
				spi_master_sdo3_o => spi_master_sdo3_o,
				spi_master_sdi0_i => spi_master_sdi0_i,
				spi_master_sdi1_i => spi_master_sdi1_i,
				spi_master_sdi2_i => spi_master_sdi2_i,
				spi_master_sdi3_i => spi_master_sdi3_i,
				scl_pad_i         => scl_pad_i,
				scl_pad_o         => scl_pad_o,
				scl_padoen_o      => scl_padoen_o,
				sda_pad_i         => sda_pad_i,
				sda_pad_o         => sda_pad_o,
				sda_padoen_o      => sda_padoen_o,
				uart_tx           => open,
				uart_rx           => '0',
				uart_rts          => open,
				uart_dtr          => open,
				uart_cts          => '0',
				uart_dsr          => '0',
				gpio_in           => packed_gpio_in,
				gpio_out          => packed_gpio_out,
				gpio_dir          => open,
				--gpio_padcfg       => open,
				tck_i             => tck,
				trstn_i           => '1',
				tms_i             => tms,
				tdi_i             => tdi,
				tdo_o             => tdo,
				--pad_cfg_o         => open,
				pad_mux_o         => open
			);
			
		i2c_scl <= 'Z' when scl_padoen_o ='1' else scl_pad_o;
		scl_pad_i <= i2c_scl;
		i2c_sda <= 'Z' when sda_padoen_o = '1' else sda_pad_o;
		sda_pad_i <= i2c_sda;
			
		spi_lms_SS_n(0) <= spi_lms_SS_n_int(0);
		spi_lms_SS_n(1) <= spi_lms_SS_n_int(1);

		spi_1_SS_n(0) <=  spi_lms_SS_n_int(2);
		spi_1_SS_n(1) <=  spi_lms_SS_n_int(3);

		spi_lms_MOSI <= spi_master_sdo0_o when spi_lms_SS_n_int(0)='0'
									else spi_master_sdo1_o;

		spi_1_MOSI <= spi_master_sdo0_o when spi_lms_SS_n_int(2)='0'
									else spi_master_sdo1_o;

		spi_lms_SCLK <= spi_master_clk_o;
		spi_1_SCLK <= spi_master_clk_o;
			
			
		leds_int<= packed_gpio_out(15 downto 8);
		lms_ctr_gpio_int<= packed_gpio_out(7 downto 4);
		internal_rst <= reset_gpio(0);
		internal_rst_n <= not reset_gpio(0);

		leds <= leds_int;
		lms_ctr_gpio <= lms_ctr_gpio_int;

		packed_gpio_in(31 downto 24) <= (others=> '0');
		packed_gpio_in(23 downto 16) <= switch;
		packed_gpio_in(15 downto 8) <= leds_int;
		packed_gpio_in(7 downto 4) <= lms_ctr_gpio_int;
		packed_gpio_in(3 downto 0) <= (others=> '0');
		

		sld_virtual_jtag_inst : component sld_virtual_jtag
			generic map(
				--lpm_hint                => lpm_hint,
				lpm_type                => "sld_virtual_jtag",
				sld_auto_instance_index => "YES",
				sld_instance_index      => 0,
				sld_ir_width            => 4,
				sld_sim_action          => "",
				sld_sim_n_scan          => 0,
				sld_sim_total_length    => 0
			)
			port map(
				ir_in              => open,
				ir_out             => open,
				jtag_state_cdr     => open,
				jtag_state_cir     => open,
				jtag_state_e1dr    => open,
				jtag_state_e1ir    => open,
				jtag_state_e2dr    => open,
				jtag_state_e2ir    => open,
				jtag_state_pdr     => open,
				jtag_state_pir     => open,
				jtag_state_rti     => open,
				jtag_state_sdr     => open,
				jtag_state_sdrs    => open,
				jtag_state_sir     => open,
				jtag_state_sirs    => open,
				jtag_state_tlr     => open,
				jtag_state_udr     => open,
				jtag_state_uir     => open,
				tck                => tck,
				tdi                => tdi,
				tdo                => tdo,
				tms                => tms,
				virtual_state_cdr  => open,
				virtual_state_cir  => open,
				virtual_state_e1dr => open,
				virtual_state_e2dr => open,
				virtual_state_pdr  => open,
				virtual_state_sdr  => open,
				virtual_state_udr  => open,
				virtual_state_uir  => open
			);
			
--	internal_rst <= '0';
--	internal_rst_n <= '1';
--			
		
		

	end generate gen_pulpino;
--	
--	gen_orca : if cpu_name="orca_qsys" generate
--		
--		lms_orca_inst :  lms_orca
--			port map(
--				clk_clk                                     => clk100,
--				exfifo_if_d_export                          => exfifo_if_d,
--				exfifo_if_rd_export                         => exfifo_if_rd,
--				exfifo_if_rdempty_export                    => exfifo_if_rdempty,
--				exfifo_of_d_export                          => exfifo_of_d,
--				exfifo_of_wr_export                         => exfifo_of_wr,
--				exfifo_of_wrfull_export                     => exfifo_of_wrfull,
--				exfifo_rst_export                           => exfifo_rst,
--				leds_external_connection_export             => leds,
--				lms_ctr_gpio_external_connection_export     => lms_ctr_gpio,
--				scl_exp_export                              => i2c_scl,
--				sda_exp_export                              => i2c_sda,
--				spi_1_dac_external_MISO                     => '0',
--				spi_1_dac_external_MOSI                     => spi_1_MOSI,
--				spi_1_dac_external_SCLK                     => spi_1_SCLK,
--				spi_1_dac_external_SS_n                     => spi_1_SS_n,
--				spi_lms_external_MISO                       => spi_lms_MISO,
--				spi_lms_external_MOSI                       => spi_lms_MOSI,
--				spi_lms_external_SCLK                       => spi_lms_SCLK,
--				spi_lms_external_SS_n                       => spi_lms_SS_n,
--				switch_external_connection_export           => switch,
--				i2c_opencores_0_interrupt_sender_irq        => i2c_opencores_0_interrupt_sender_irq,
--				spi_lms_irq_irq                             => spi_lms_irq_irq,
--				spi_1_dac_irq_irq                           => spi_1_dac_irq_irq,
--				vectorblox_orca_0_global_interrupts_export  => vectorblox_orca_0_global_interrupts_export,
--				in_reset_reset_n                            => in_reset_reset_n,
--				controlled_reset_external_connection_export => controlled_reset_external_connection_export
--			);
--			
--			vectorblox_orca_0_global_interrupts_export(0) <= i2c_opencores_0_interrupt_sender_irq or  spi_lms_irq_irq or spi_1_dac_irq_irq;
--	end generate gen_orca;
--	
--	gen_picorv32 : if cpu_name="picorv32" generate
--		
--		wb_clk <= clk100;
--		internal_rst <= reset_gpio(0);
--		internal_rst_n <= not reset_gpio(0);
--		
--		irq(0) <= i2c_irq;
--		irq(1) <= spi_lms_irq;
--		irq(2) <= '0';
--		irq(3) <= spi_1_irq;
--		irq(31 downto 4) <= (others=> '0');
--		
--		riscv_wb_intercon_inst : component riscv_wb_intercon
--			port map(
--				wb_reset_gpio_adr_o => wb_reset_gpio_adr_o,
--				wb_reset_gpio_bte_o => wb_reset_gpio_bte_o,
--				wb_reset_gpio_cti_o => wb_reset_gpio_cti_o,
--				wb_reset_gpio_cyc_o => wb_reset_gpio_cyc_o,
--				wb_reset_gpio_dat_o => wb_reset_gpio_dat_o,
--				wb_reset_gpio_sel_o => wb_reset_gpio_sel_o,
--				wb_reset_gpio_stb_o => wb_reset_gpio_stb_o,
--				wb_reset_gpio_we_o => wb_reset_gpio_we_o,
--				wb_reset_gpio_ack_i => wb_reset_gpio_ack_i,
--				wb_reset_gpio_dat_i => wb_reset_gpio_dat_i,
--				wb_reset_gpio_err_i => wb_reset_gpio_err_i,
--				wb_reset_gpio_rty_i => wb_reset_gpio_rty_i,
--				wb_Av_FIFO_Int0_ack_i    => wb_Av_FIFO_Int0_ack,
--				wb_Av_FIFO_Int0_adr_o    => wb_Av_FIFO_Int0_adr,
--				wb_Av_FIFO_Int0_bte_o    => wb_Av_FIFO_Int0_bte,
--				wb_Av_FIFO_Int0_cti_o    => wb_Av_FIFO_Int0_cti,
--				wb_Av_FIFO_Int0_cyc_o    => wb_Av_FIFO_Int0_cyc,
--				wb_Av_FIFO_Int0_dat_i    => wb_Av_FIFO_Int0_dat_i,
--				wb_Av_FIFO_Int0_dat_o    => wb_Av_FIFO_Int0_dat_o,
--				wb_Av_FIFO_Int0_err_i    => wb_Av_FIFO_Int0_err,
--				wb_Av_FIFO_Int0_rty_i    => wb_Av_FIFO_Int0_rty,
--				wb_Av_FIFO_Int0_sel_o    => wb_Av_FIFO_Int0_sel,
--				wb_Av_FIFO_Int0_stb_o    => wb_Av_FIFO_Int0_stb,
--				wb_Av_FIFO_Int0_we_o     => wb_Av_FIFO_Int0_we,
--				wb_clk_i                 => wb_clk,
--				wb_dbus_ack_o            => wb_dbus_ack,
--				wb_dbus_adr_i            => wb_dbus_adr,
--				wb_dbus_bte_i            => wb_dbus_bte,
--				wb_dbus_cti_i            => wb_dbus_cti,
--				wb_dbus_cyc_i            => wb_dbus_cyc,
--				wb_dbus_dat_i            => wb_dbus_dat_i,
--				wb_dbus_dat_o            => wb_dbus_dat_o,
--				wb_dbus_err_o            => wb_dbus_err,
--				wb_dbus_rty_o            => wb_dbus_rty,
--				wb_dbus_sel_i            => wb_dbus_sel,
--				wb_dbus_stb_i            => wb_dbus_stb,
--				wb_dbus_we_i             => wb_dbus_we,
--				wb_i2c_opencores_0_ack_i => wb_i2c_opencores_0_ack,
--				wb_i2c_opencores_0_adr_o => wb_i2c_opencores_0_adr,
--				wb_i2c_opencores_0_bte_o => wb_i2c_opencores_0_bte,
--				wb_i2c_opencores_0_cti_o => wb_i2c_opencores_0_cti,
--				wb_i2c_opencores_0_cyc_o => wb_i2c_opencores_0_cyc,
--				wb_i2c_opencores_0_dat_i => wb_i2c_opencores_0_dat_i,
--				wb_i2c_opencores_0_dat_o => wb_i2c_opencores_0_dat_o,
--				wb_i2c_opencores_0_err_i => wb_i2c_opencores_0_err,
--				wb_i2c_opencores_0_rty_i => wb_i2c_opencores_0_rty,
--				wb_i2c_opencores_0_sel_o => wb_i2c_opencores_0_sel,
--				wb_i2c_opencores_0_stb_o => wb_i2c_opencores_0_stb,
--				wb_i2c_opencores_0_we_o  => wb_i2c_opencores_0_we,
--				wb_ibus_ack_o            => wb_ibus_ack,
--				wb_ibus_adr_i            => wb_ibus_adr,
--				wb_ibus_bte_i            => wb_ibus_bte,
--				wb_ibus_cti_i            => wb_ibus_cti,
--				wb_ibus_cyc_i            => wb_ibus_cyc,
--				wb_ibus_dat_i            => wb_ibus_dat_i,
--				wb_ibus_dat_o            => wb_ibus_dat_o,
--				wb_ibus_err_o            => wb_ibus_err,
--				wb_ibus_rty_o            => wb_ibus_rty,
--				wb_ibus_sel_i            => wb_ibus_sel,
--				wb_ibus_stb_i            => wb_ibus_stb,
--				wb_ibus_we_i             => wb_ibus_we,
--				wb_leds_ack_i            => wb_leds_ack,
--				wb_leds_adr_o            => wb_leds_adr,
--				wb_leds_bte_o            => wb_leds_bte,
--				wb_leds_cti_o            => wb_leds_cti,
--				wb_leds_cyc_o            => wb_leds_cyc,
--				wb_leds_dat_i            => wb_leds_dat_i,
--				wb_leds_dat_o            => wb_leds_dat_o,
--				wb_leds_err_i            => wb_leds_err,
--				wb_leds_rty_i            => wb_leds_rty,
--				wb_leds_sel_o            => wb_leds_sel,
--				wb_leds_stb_o            => wb_leds_stb,
--				wb_leds_we_o             => wb_leds_we,
--				wb_lms_ctr_gpio_ack_i    => wb_lms_ctr_gpio_ack,
--				wb_lms_ctr_gpio_adr_o    => wb_lms_ctr_gpio_adr,
--				wb_lms_ctr_gpio_bte_o    => wb_lms_ctr_gpio_bte,
--				wb_lms_ctr_gpio_cti_o    => wb_lms_ctr_gpio_cti,
--				wb_lms_ctr_gpio_cyc_o    => wb_lms_ctr_gpio_cyc,
--				wb_lms_ctr_gpio_dat_i    => wb_lms_ctr_gpio_dat_i,
--				wb_lms_ctr_gpio_dat_o    => wb_lms_ctr_gpio_dat_o,
--				wb_lms_ctr_gpio_err_i    => wb_lms_ctr_gpio_err,
--				wb_lms_ctr_gpio_rty_i    => wb_lms_ctr_gpio_rty,
--				wb_lms_ctr_gpio_sel_o    => wb_lms_ctr_gpio_sel,
--				wb_lms_ctr_gpio_stb_o    => wb_lms_ctr_gpio_stb,
--				wb_lms_ctr_gpio_we_o     => wb_lms_ctr_gpio_we,
--				wb_oc_mem_dbus_ack_i     => wb_oc_mem_dbus_ack,
--				wb_oc_mem_dbus_adr_o     => wb_oc_mem_dbus_adr,
--				wb_oc_mem_dbus_bte_o     => wb_oc_mem_dbus_bte,
--				wb_oc_mem_dbus_cti_o     => wb_oc_mem_dbus_cti,
--				wb_oc_mem_dbus_cyc_o     => wb_oc_mem_dbus_cyc,
--				wb_oc_mem_dbus_dat_i     => wb_oc_mem_dbus_dat_i,
--				wb_oc_mem_dbus_dat_o     => wb_oc_mem_dbus_dat_o,
--				wb_oc_mem_dbus_err_i     => wb_oc_mem_dbus_err,
--				wb_oc_mem_dbus_rty_i     => wb_oc_mem_dbus_rty,
--				wb_oc_mem_dbus_sel_o     => wb_oc_mem_dbus_sel,
--				wb_oc_mem_dbus_stb_o     => wb_oc_mem_dbus_stb,
--				wb_oc_mem_dbus_we_o      => wb_oc_mem_dbus_we,
--				wb_oc_mem_ibus_ack_i     => wb_oc_mem_ibus_ack,
--				wb_oc_mem_ibus_adr_o     => wb_oc_mem_ibus_adr,
--				wb_oc_mem_ibus_bte_o     => wb_oc_mem_ibus_bte,
--				wb_oc_mem_ibus_cti_o     => wb_oc_mem_ibus_cti,
--				wb_oc_mem_ibus_cyc_o     => wb_oc_mem_ibus_cyc,
--				wb_oc_mem_ibus_dat_i     => wb_oc_mem_ibus_dat_i,
--				wb_oc_mem_ibus_dat_o     => wb_oc_mem_ibus_dat_o,
--				wb_oc_mem_ibus_err_i     => wb_oc_mem_ibus_err,
--				wb_oc_mem_ibus_rty_i     => wb_oc_mem_ibus_rty,
--				wb_oc_mem_ibus_sel_o     => wb_oc_mem_ibus_sel,
--				wb_oc_mem_ibus_stb_o     => wb_oc_mem_ibus_stb,
--				wb_oc_mem_ibus_we_o      => wb_oc_mem_ibus_we,
--				wb_rst_i                 => internal_rst,
--				wb_spi_1_ADF_ack_i       => wb_spi_1_ADF_ack,
--				wb_spi_1_ADF_adr_o       => wb_spi_1_ADF_adr,
--				wb_spi_1_ADF_bte_o       => wb_spi_1_ADF_bte,
--				wb_spi_1_ADF_cti_o       => wb_spi_1_ADF_cti,
--				wb_spi_1_ADF_cyc_o       => wb_spi_1_ADF_cyc,
--				wb_spi_1_ADF_dat_i       => wb_spi_1_ADF_dat_i,
--				wb_spi_1_ADF_dat_o       => wb_spi_1_ADF_dat_o,
--				wb_spi_1_ADF_err_i       => wb_spi_1_ADF_err,
--				wb_spi_1_ADF_rty_i       => wb_spi_1_ADF_rty,
--				wb_spi_1_ADF_sel_o       => wb_spi_1_ADF_sel,
--				wb_spi_1_ADF_stb_o       => wb_spi_1_ADF_stb,
--				wb_spi_1_ADF_we_o        => wb_spi_1_ADF_we,
--				wb_spi_1_DAC_ack_i       => wb_spi_1_DAC_ack,
--				wb_spi_1_DAC_adr_o       => wb_spi_1_DAC_adr,
--				wb_spi_1_DAC_bte_o       => wb_spi_1_DAC_bte,
--				wb_spi_1_DAC_cti_o       => wb_spi_1_DAC_cti,
--				wb_spi_1_DAC_cyc_o       => wb_spi_1_DAC_cyc,
--				wb_spi_1_DAC_dat_i       => wb_spi_1_DAC_dat_i,
--				wb_spi_1_DAC_dat_o       => wb_spi_1_DAC_dat_o,
--				wb_spi_1_DAC_err_i       => wb_spi_1_DAC_err,
--				wb_spi_1_DAC_rty_i       => wb_spi_1_DAC_rty,
--				wb_spi_1_DAC_sel_o       => wb_spi_1_DAC_sel,
--				wb_spi_1_DAC_stb_o       => wb_spi_1_DAC_stb,
--				wb_spi_1_DAC_we_o        => wb_spi_1_DAC_we,
--				wb_spi_lms_ack_i         => wb_spi_lms_ack,
--				wb_spi_lms_adr_o         => wb_spi_lms_adr,
--				wb_spi_lms_bte_o         => wb_spi_lms_bte,
--				wb_spi_lms_cti_o         => wb_spi_lms_cti,
--				wb_spi_lms_cyc_o         => wb_spi_lms_cyc,
--				wb_spi_lms_dat_i         => wb_spi_lms_dat_i,
--				wb_spi_lms_dat_o         => wb_spi_lms_dat_o,
--				wb_spi_lms_err_i         => wb_spi_lms_err,
--				wb_spi_lms_rty_i         => wb_spi_lms_rty,
--				wb_spi_lms_sel_o         => wb_spi_lms_sel,
--				wb_spi_lms_stb_o         => wb_spi_lms_stb,
--				wb_spi_lms_we_o          => wb_spi_lms_we,
--				wb_switch_ack_i          => wb_switch_ack,
--				wb_switch_adr_o          => wb_switch_adr,
--				wb_switch_bte_o          => wb_switch_bte,
--				wb_switch_cti_o          => wb_switch_cti,
--				wb_switch_cyc_o          => wb_switch_cyc,
--				wb_switch_dat_i          => wb_switch_dat_i,
--				wb_switch_dat_o          => wb_switch_dat_o,
--				wb_switch_err_i          => wb_switch_err,
--				wb_switch_rty_i          => wb_switch_rty,
--				wb_switch_sel_o          => wb_switch_sel,
--				wb_switch_stb_o          => wb_switch_stb,
--				wb_switch_we_o           => wb_switch_we
--			);
--			
--			
--		switch_inst : component gpio
--			port map(
--				wb_clk     => wb_clk,
--				wb_rst     => internal_rst,
--				wb_adr_i   => wb_switch_adr(0),
--				wb_dat_i   => wb_switch_dat_o(7 downto 0),
--				wb_we_i    => wb_switch_we,
--				wb_cyc_i   => wb_switch_cyc,
--				wb_stb_i   => wb_switch_stb,
--				wb_cti_i   => wb_switch_cti,
--				wb_bte_i   => wb_switch_bte,
--				wb_dat_o   => wb_switch_dat_i(7 downto 0),
--				wb_ack_o   => wb_switch_ack,
--				wb_err_o   => wb_switch_err,
--				wb_rty_o   => wb_switch_rty,
--				gpio_i     => switch,
--				gpio_o     => open,
--				gpio_dir_o => open
--			);
--			
--			
--		instr_ram_inst : component wb_ram
--			generic map(
--				dw       => 32,
--				depth    => 32768,
--				aw       => 15, 
--				memfile => ""
--			)
--			port map(
--				wb_clk_i => wb_clk,
--				wb_rst_i => internal_rst,
--				wb_adr_i => wb_oc_mem_ibus_adr(14 downto 0),
--				wb_dat_i => wb_oc_mem_ibus_dat_o,
--				wb_sel_i => wb_oc_mem_ibus_sel,
--				wb_we_i  => wb_oc_mem_ibus_we,
--				wb_bte_i => wb_oc_mem_ibus_bte,
--				wb_cti_i => wb_oc_mem_ibus_cti,
--				wb_cyc_i => wb_oc_mem_ibus_cyc,
--				wb_stb_i => wb_oc_mem_ibus_stb,
--				wb_ack_o => wb_oc_mem_ibus_ack,
--				wb_err_o => wb_oc_mem_ibus_err,
--				wb_dat_o => wb_oc_mem_ibus_dat_i
--			);
--			
--			data_ram_inst : component wb_ram
--			generic map(
--				dw       => 32,
--				depth    => 32768,-- 32768 Bytes
--				aw       => 15,
--				memfile => ""
--			)
--			port map(
--				wb_clk_i => wb_clk,
--				wb_rst_i => internal_rst,
--				wb_adr_i => wb_oc_mem_dbus_adr(14 downto 0),
--				wb_dat_i => wb_oc_mem_dbus_dat_o,
--				wb_sel_i => wb_oc_mem_dbus_sel,
--				wb_we_i  => wb_oc_mem_dbus_we,
--				wb_bte_i => wb_oc_mem_dbus_bte,
--				wb_cti_i => wb_oc_mem_dbus_cti,
--				wb_cyc_i => wb_oc_mem_dbus_cyc,
--				wb_stb_i => wb_oc_mem_dbus_stb,
--				wb_ack_o => wb_oc_mem_dbus_ack,
--				wb_err_o => wb_oc_mem_dbus_err,
--				wb_dat_o => wb_oc_mem_dbus_dat_i
--			);
--			
--			picorv32_wb_inst : component picorv32_wb
----				generic map(
----					ENABLE_COUNTERS      => ENABLE_COUNTERS,
----					ENABLE_COUNTERS64    => ENABLE_COUNTERS64,
----					ENABLE_REGS_16_31    => ENABLE_REGS_16_31,
----					ENABLE_REGS_DUALPORT => ENABLE_REGS_DUALPORT,
----					TWO_STAGE_SHIFT      => TWO_STAGE_SHIFT,
----					BARREL_SHIFTER       => BARREL_SHIFTER,
----					TWO_CYCLE_COMPARE    => TWO_CYCLE_COMPARE,
----					TWO_CYCLE_ALU        => TWO_CYCLE_ALU,
----					COMPRESSED_ISA       => COMPRESSED_ISA,
----					CATCH_MISALIGN       => CATCH_MISALIGN,
----					CATCH_ILLINSN        => CATCH_ILLINSN,
----					ENABLE_PCPI          => ENABLE_PCPI,
----					ENABLE_MUL           => ENABLE_MUL,
----					ENABLE_FAST_MUL      => ENABLE_FAST_MUL,
----					ENABLE_DIV           => ENABLE_DIV,
----					ENABLE_IRQ           => ENABLE_IRQ,
----					ENABLE_IRQ_QREGS     => ENABLE_IRQ_QREGS,
----					ENABLE_IRQ_TIMER     => ENABLE_IRQ_TIMER,
----					ENABLE_TRACE         => ENABLE_TRACE,
----					REGS_INIT_ZERO       => REGS_INIT_ZERO,
----					MASKED_IRQ           => MASKED_IRQ,
----					LATCHED_IRQ          => LATCHED_IRQ,
----					PROGADDR_RESET       => PROGADDR_RESET,
----					PROGADDR_IRQ         => PROGADDR_IRQ,
----					STACKADDR            => STACKADDR
----				);
--				port map(
--					eoi         => open,
--					irq         => irq,
--					mem_instr   => open,
--					pcpi_insn   => open,
--					pcpi_rd     => (others=>'0'),
--					pcpi_ready  => '0',
--					pcpi_rs1    => open,
--					pcpi_rs2    => open,
--					pcpi_valid  => open,
--					pcpi_wait   => '0',
--					pcpi_wr     => '0',
--					trace_data  => open,
--					trace_valid => open,
--					trap        => open,
--					wb_clk_i    => wb_clk,
--					wb_rst_i    => internal_rst,
--					wbm_ack_i   => wb_dbus_ack,
--					wbm_adr_o   => wb_dbus_adr,
--					wbm_cyc_o   => wb_dbus_cyc,
--					wbm_dat_i   => wb_dbus_dat_o,
--					wbm_dat_o   => wb_dbus_dat_i,
--					wbm_sel_o   => wb_dbus_sel,
--					wbm_stb_o   => wb_dbus_stb,
--					wbm_we_o    => wb_dbus_we
--				);
--			
--			
--
--		lms_ctr_gpio_inst : component gpio
--			port map(
--				wb_clk     => wb_clk,
--				wb_rst     => internal_rst,
--				wb_adr_i   => wb_lms_ctr_gpio_adr(0),
--				wb_dat_i   => wb_lms_ctr_gpio_dat_o,
--				wb_we_i    => wb_lms_ctr_gpio_we,
--				wb_cyc_i   => wb_lms_ctr_gpio_cyc,
--				wb_stb_i   => wb_lms_ctr_gpio_stb,
--				wb_cti_i   => wb_lms_ctr_gpio_cti,
--				wb_bte_i   => wb_lms_ctr_gpio_bte,
--				wb_dat_o   => wb_lms_ctr_gpio_dat_i,
--				wb_ack_o   => wb_lms_ctr_gpio_ack,
--				wb_err_o   => wb_lms_ctr_gpio_err,
--				wb_rty_o   => wb_lms_ctr_gpio_rty,
--				gpio_i     => lms_ctr_gpio_full,
--				gpio_o     => lms_ctr_gpio_full,
--				gpio_dir_o => open
--			);
--			
--			lms_ctr_gpio <= lms_ctr_gpio_full(3 downto 0);
--			
--		leds_inst : component gpio
--			port map(
--				wb_clk     => wb_clk,
--				wb_rst     => internal_rst,
--				wb_adr_i   => wb_leds_adr(0),
--				wb_dat_i   => wb_leds_dat_o,
--				wb_we_i    => wb_leds_we,
--				wb_cyc_i   => wb_leds_cyc,
--				wb_stb_i   => wb_leds_stb,
--				wb_cti_i   => wb_leds_cti,
--				wb_bte_i   => wb_leds_bte,
--				wb_dat_o   => wb_leds_dat_i,
--				wb_ack_o   => wb_leds_ack,
--				wb_err_o   => wb_leds_err,
--				wb_rty_o   => wb_leds_rty,
--				gpio_i     => leds_full,
--				gpio_o     => leds_full,
--				gpio_dir_o => open
--			);
--			
--			reset_gpio_inst : component gpio
--				port map(
--					wb_clk     => wb_clk,
--					wb_rst     => internal_rst,
--					wb_adr_i   => wb_reset_gpio_adr_o(0),
--					wb_dat_i   => wb_reset_gpio_dat_o,
--					wb_we_i    => wb_reset_gpio_we_o,
--					wb_cyc_i   => wb_reset_gpio_cyc_o,
--					wb_stb_i   => wb_reset_gpio_stb_o,
--					wb_cti_i   => wb_reset_gpio_cti_o,
--					wb_bte_i   => wb_reset_gpio_bte_o,
--					wb_dat_o   => wb_reset_gpio_dat_i,
--					wb_ack_o   => wb_reset_gpio_ack_i,
--					wb_err_o   => wb_reset_gpio_err_i,
--					wb_rty_o   => wb_reset_gpio_rty_i,
--					gpio_i     => reset_gpio,
--					gpio_o     => reset_gpio,
--					gpio_dir_o => open
--				);
--			
--			leds <= leds_full;
--			
--			
--			
--		spi_lms_inst : component simple_spi
--			generic map(
--				SS_WIDTH => 5
--			)
--			port map(
--				clk_i  => wb_clk,
--				rst_i  => internal_rst,
--				cyc_i  => wb_spi_lms_cyc,
--				stb_i  => wb_spi_lms_stb,
--				adr_i  => wb_spi_lms_adr(2 downto 0),
--				we_i   => wb_spi_lms_we,
--				dat_i  => wb_spi_lms_dat_o(7 downto 0),
--				dat_o  => wb_spi_lms_dat_i(7 downto 0),
--				ack_o  => wb_spi_lms_ack,
--				inta_o => spi_lms_irq, 
--				sck_o  => spi_lms_SCLK,
--				ss_o   => spi_lms_SS_n,
--				mosi_o => spi_lms_MOSI,
--				miso_i => spi_lms_MISO
--			);
--			
--		spi_1_ADF_inst : component simple_spi
--				generic map(
--					SS_WIDTH => 2
--				)
--				port map(
--					clk_i  => wb_clk,
--					rst_i  => internal_rst,
--					cyc_i  => wb_spi_1_ADF_cyc,
--					stb_i  => wb_spi_1_ADF_stb,
--					adr_i  => wb_spi_1_ADF_adr(2 downto 0),
--					we_i   => wb_spi_1_ADF_we,
--					dat_i  => wb_spi_1_ADF_dat_o(7 downto 0),
--					dat_o  => wb_spi_1_ADF_dat_i(7 downto 0),
--					ack_o  => wb_spi_1_ADF_ack,
--					inta_o => spi_1_irq, ------------------------------------------
--					sck_o  => spi_1_SCLK,
--					ss_o   => spi_1_SS_n,
--					mosi_o => spi_1_MOSI,
--					miso_i => '0'
--				);
--				
--				
--		i2c_inst : component i2c_master_top
--			port map(
--				wb_clk_i     => wb_clk,
--				wb_rst_i     => internal_rst,
--				arst_i       => internal_rst,
--				wb_adr_i     => wb_i2c_opencores_0_adr(2 downto 0),
--				wb_dat_i     => wb_i2c_opencores_0_dat_o,
--				wb_dat_o     => wb_i2c_opencores_0_dat_i,
--				wb_we_i      => wb_i2c_opencores_0_we,
--				wb_stb_i     => wb_i2c_opencores_0_stb,
--				wb_cyc_i     => wb_i2c_opencores_0_cyc,
--				wb_ack_o     => wb_i2c_opencores_0_ack,
--				wb_inta_o    => i2c_irq,
--				scl_pad_i    => scl_pad_i,
--				scl_pad_o    => scl_pad_o,
--				scl_padoen_o => scl_padoen_o,
--				sda_pad_i    => sda_pad_i,
--				sda_pad_o    => sda_pad_o,
--				sda_padoen_o => sda_padoen_o
--			);
--			
--		-- i2c phy lines
--		i2c_scl <= 'Z' when scl_padoen_o ='1' else scl_pad_o;
--		i2c_sda <= 'Z' when sda_padoen_o = '1' else sda_pad_o;
--				
--			
--			
--		-- External FIFO	
--		Av_FIFO_Int_0 : component avfifo
--			generic map(
--				width => 32
--			)
--			port map(
--				clk            => wb_clk,
--				rsi_nrst       => av_nrst,
--				chipselect     => wb_Av_FIFO_Int0_stb,
--				address        => wb_Av_FIFO_Int0_adr(1 downto 0),
--				write          => av_write,
--				writedata      => wb_Av_FIFO_Int0_dat_o,
--				read           => av_read,
--				readdata       => wb_Av_FIFO_Int0_dat_i,
--				coe_of_d       => exfifo_of_d,
--				coe_of_wr      => exfifo_of_wr,
--				coe_of_wrfull  => exfifo_of_wrfull,
--				coe_if_d       => exfifo_if_d,
--				coe_if_rd      => exfifo_if_rd,
--				coe_if_rdempty => exfifo_if_rdempty,
--				coe_fifo_rst   => exfifo_rst
--			);
--			
--		
--			av_nrst <= not internal_rst;
--			av_write <= wb_Av_FIFO_Int0_cyc and wb_Av_FIFO_Int0_we;
--			av_read <= wb_Av_FIFO_Int0_cyc and (not wb_Av_FIFO_Int0_we);
--			
--		--
--
--	end generate gen_picorv32;
--	
--	
--	gen_lowrisc : if cpu_name="lowrisc" generate
--		
--		
--		
--	end generate gen_lowrisc;
--	
--	gen_mor1kx : if cpu_name="mor1kx" generate
--		
--		
--	end generate gen_mor1kx;
--	
--	gen_nios2 : if cpu_name="nios2" generate		
--		nios_cpu_inst : entity work.nios_cpu
--			port map(
--				clk100            => clk100,
--				exfifo_if_d       => exfifo_if_d,
--				exfifo_if_rd      => exfifo_if_rd,
--				exfifo_if_rdempty => exfifo_if_rdempty,
--				exfifo_of_d       => exfifo_of_d,
--				exfifo_of_wr      => exfifo_of_wr,
--				exfifo_of_wrfull  => exfifo_of_wrfull,
--				exfifo_rst        => exfifo_rst,
--				leds              => leds,
--				lms_ctr_gpio      => lms_ctr_gpio,
--				spi_lms_MISO      => spi_lms_MISO,
--				spi_lms_MOSI      => spi_lms_MOSI,
--				spi_lms_SCLK      => spi_lms_SCLK,
--				spi_lms_SS_n      => spi_lms_SS_n,
--				spi_1_MOSI        => spi_1_MOSI,
--				spi_1_SCLK        => spi_1_SCLK,
--				spi_1_SS_n        => spi_1_SS_n,
--				switch            => switch,
--				i2c_scl           => i2c_scl,
--				i2c_sda           => i2c_sda
--			);
--		
--		
--	end generate gen_nios2;
--	

end architecture RTL;
