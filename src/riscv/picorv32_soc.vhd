library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity picorv32_soc is
	port (
		clk : in std_logic;
		rst : in std_logic
	);
end entity picorv32_soc;

architecture RTL of picorv32_soc is
	
	component i2c_master_top
		port(
			
			wb_clk_i		:	in std_logic;
			wb_rst_i		:	in std_logic;
			arst_i		:	in	std_logic;
			wb_adr_i	:	in std_logic_vector(2 downto 0);
			wb_dat_i	:	in	std_logic_vector(7 downto 0);
			wb_dat_o	:	in	std_logic_vector(7 downto 0);
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
			gpio_o		:	in	std_logic_vector(7 downto 0);
			gpio_dir_o	:	out	std_logic_vector(7 downto 0)
		);
	end component gpio;
	
	
	
	
	component picorv_intercon
		port(
			wb_clk_i	: in  std_logic;
			wb_rst_i	: in  std_logic;
			wb_or1k_i_adr_i : in  std_logic_vector(31 downto 0);
			wb_or1k_i_dat_i : in  std_logic_vector(31 downto 0);
			wb_or1k_i_sel_i : in  std_logic_vector(3 downto 0);
			wb_or1k_i_we_i : in  std_logic;
			wb_or1k_i_cyc_i : in  std_logic;
			wb_or1k_i_stb_i : in  std_logic;
			wb_or1k_i_cti_i : in  std_logic_vector(2 downto 0);
			wb_or1k_i_bte_i : in  std_logic_vector(1 downto 0);
			wb_or1k_i_dat_o : out  std_logic_vector(31 downto 0);
			wb_or1k_i_ack_o : out  std_logic;
			wb_or1k_i_err_o : out  std_logic;
			wb_or1k_i_rty_o : out  std_logic;
			wb_dbus_adr_i : in  std_logic_vector(31 downto 0);
			wb_dbus_dat_i : in  std_logic_vector(31 downto 0);
			wb_dbus_sel_i : in  std_logic_vector(3 downto 0);
			wb_dbus_we_i : in  std_logic;
			wb_dbus_cyc_i : in  std_logic;
			wb_dbus_stb_i : in  std_logic;
			wb_dbus_cti_i : in  std_logic_vector(2 downto 0);
			wb_dbus_bte_i : in  std_logic_vector(1 downto 0);
			wb_dbus_dat_o : out  std_logic_vector(31 downto 0);
			wb_dbus_ack_o : out  std_logic;
			wb_dbus_err_o : out  std_logic;
			wb_dbus_rty_o : out  std_logic;
			wb_sdram_dbus_adr_o : out  std_logic_vector(31 downto 0);
			wb_sdram_dbus_dat_o : out  std_logic_vector(31 downto 0);
			wb_sdram_dbus_sel_o : out  std_logic_vector(3 downto 0);
			wb_sdram_dbus_we_o : out  std_logic;
			wb_sdram_dbus_cyc_o : out  std_logic;
			wb_sdram_dbus_stb_o : out  std_logic;
			wb_sdram_dbus_cti_o : out  std_logic_vector(2 downto 0);
			wb_sdram_dbus_bte_o : out  std_logic_vector(1 downto 0);
			wb_sdram_dbus_dat_i : in  std_logic_vector(31 downto 0);
			wb_sdram_dbus_ack_i : in  std_logic;
			wb_sdram_dbus_err_i : in  std_logic;
			wb_sdram_dbus_rty_i : in  std_logic;
			wb_sdram_ibus_adr_o : out  std_logic_vector(31 downto 0);
			wb_sdram_ibus_dat_o : out  std_logic_vector(31 downto 0);
			wb_sdram_ibus_sel_o : out  std_logic_vector(3 downto 0);
			wb_sdram_ibus_we_o   : out  std_logic;
			wb_sdram_ibus_cyc_o : out  std_logic;
			wb_sdram_ibus_stb_o : out  std_logic;
			wb_sdram_ibus_cti_o : out  std_logic_vector(2 downto 0);
			wb_sdram_ibus_bte_o : out  std_logic_vector(1 downto 0);
			wb_sdram_ibus_dat_i : in  std_logic_vector(31 downto 0);
			wb_sdram_ibus_ack_i : in  std_logic;
			wb_sdram_ibus_err_i : in  std_logic;
			wb_sdram_ibus_rty_i : in  std_logic;
			wb_uart0_adr_o : out  std_logic_vector(31 downto 0);
			wb_uart0_dat_o : out  std_logic_vector(7 downto 0);
			wb_uart0_sel_o : out  std_logic_vector(3 downto 0);
			wb_uart0_we_o : out  std_logic;
			wb_uart0_cyc_o : out  std_logic;
			wb_uart0_stb_o : out  std_logic;
			wb_uart0_cti_o : out  std_logic_vector(2 downto 0);
			wb_uart0_bte_o : out  std_logic_vector(1 downto 0);
			wb_uart0_dat_i : std_logic_vector(7 downto 0);
			wb_uart0_ack_i : in  std_logic;
			wb_uart0_err_i : in  std_logic;
			wb_uart0_rty_i : in  std_logic;
			wb_gpio0_adr_o : out  std_logic_vector(31 downto 0);
			wb_gpio0_dat_o : out  std_logic_vector(7 downto 0);
			wb_gpio0_sel_o : out  std_logic_vector(3 downto 0);
			wb_gpio0_we_o : out  std_logic;
			wb_gpio0_cyc_o : out  std_logic;
			wb_gpio0_stb_o : out  std_logic;
			wb_gpio0_cti_o : out  std_logic_vector(2 downto 0);
			wb_gpio0_bte_o : out  std_logic_vector(1 downto 0);
			wb_gpio0_dat_i : in  std_logic_vector(7 downto 0);
			wb_gpio0_ack_i : in  std_logic;
			wb_gpio0_err_i : in  std_logic;
			wb_gpio0_rty_i : in  std_logic;
			wb_gpio1_adr_o : out  std_logic_vector(31 downto 0);
			wb_gpio1_dat_o : out  std_logic_vector(7 downto 0);
			wb_gpio1_sel_o : out  std_logic_vector(3 downto 0);
			wb_gpio1_we_o : out  std_logic;
			wb_gpio1_cyc_o : out  std_logic;
			wb_gpio1_stb_o : out  std_logic;
			wb_gpio1_cti_o  : out  std_logic_vector(2 downto 0);
			wb_gpio1_bte_o  : out  std_logic_vector(1 downto 0);
			wb_gpio1_dat_i  : in  std_logic_vector(7 downto 0);
			wb_gpio1_ack_i : in  std_logic;
			wb_gpio1_err_i : in  std_logic;
			wb_gpio1_rty_i : in  std_logic;
			wb_i2c0_adr_o : out  std_logic_vector(31 downto 0);
			wb_i2c0_dat_o : out  std_logic_vector(7 downto 0);
			wb_i2c0_sel_o  : out  std_logic_vector(3 downto 0);
			wb_i2c0_we_o  : out  std_logic;
			wb_i2c0_cyc_o : out  std_logic;
			wb_i2c0_stb_o : out  std_logic;
			wb_i2c0_cti_o : out  std_logic_vector(2 downto 0);
			wb_i2c0_bte_o  : out  std_logic_vector(1 downto 0);
			wb_i2c0_dat_i  : in  std_logic_vector(7 downto 0);
			wb_i2c0_ack_i : in  std_logic;
			wb_i2c0_err_i : in  std_logic;
			wb_i2c0_rty_i : in  std_logic;
			wb_i2c1_adr_o : out  std_logic_vector(31 downto 0);
			wb_i2c1_dat_o : out  std_logic_vector(7 downto 0);
			wb_i2c1_sel_o : out  std_logic_vector(3 downto 0);
			wb_i2c1_we_o : out  std_logic;
			wb_i2c1_cyc_o  : out  std_logic;
			wb_i2c1_stb_o : out  std_logic;
			wb_i2c1_cti_o : out  std_logic_vector(2 downto 0);
			wb_i2c1_bte_o : out  std_logic_vector(1 downto 0);
			wb_i2c1_dat_i : in   std_logic_vector(7 downto 0);
			wb_i2c1_ack_i  : in  std_logic;
			wb_i2c1_err_i : in  std_logic;
			wb_i2c1_rty_i : in  std_logic;
			wb_spi0_adr_o : out  std_logic_vector(31 downto 0);
			wb_spi0_dat_o : out  std_logic_vector(7 downto 0);
			wb_spi0_sel_o : out  std_logic_vector(3 downto 0);
			wb_spi0_we_o : out  std_logic;
			wb_spi0_cyc_o : out  std_logic;
			wb_spi0_stb_o : out  std_logic;
			wb_spi0_cti_o : out  std_logic_vector(2 downto 0);
			wb_spi0_bte_o : out  std_logic_vector(1 downto 0);
			wb_spi0_dat_i : in  std_logic_vector(7 downto 0);
			wb_spi0_ack_i : in  std_logic;
			wb_spi0_err_i : in  std_logic;
			wb_spi0_rty_i : in  std_logic;
			wb_spi1_adr_o : out  std_logic_vector(31 downto 0);
			wb_spi1_dat_o : out  std_logic_vector(7 downto 0);
			wb_spi1_sel_o : out  std_logic_vector(3 downto 0);
			wb_spi1_we_o : out  std_logic;
			wb_spi1_cyc_o : out  std_logic;
			wb_spi1_stb_o : out  std_logic;
			wb_spi1_cti_o : out  std_logic_vector(2 downto 0);
			wb_spi1_bte_o : out  std_logic_vector(1 downto 0);
			wb_spi1_dat_i : in   std_logic_vector(7 downto 0);
			wb_spi1_ack_i : in  std_logic;
			wb_spi1_err_i : in  std_logic;
			wb_spi1_rty_i : in  std_logic;
			wb_spi2_adr_o : out  std_logic_vector(31 downto 0);
			wb_spi2_dat_o : out  std_logic_vector(7 downto 0);
			wb_spi2_sel_o : out  std_logic_vector(3 downto 0);
			wb_spi2_we_o : out  std_logic;
			wb_spi2_cyc_o : out  std_logic;
			wb_spi2_stb_o : out  std_logic;
			wb_spi2_cti_o : out  std_logic_vector(2 downto 0);
			wb_spi2_bte_o : out  std_logic_vector(1 downto 0);
			wb_spi2_dat_i : in   std_logic_vector(7 downto 0);
			wb_spi2_ack_i : in  std_logic;
			wb_spi2_err_i : in  std_logic;
			wb_spi2_rty_i : in  std_logic;
			wb_rom0_adr_o : out  std_logic_vector(31 downto 0);
			wb_rom0_dat_o : out  std_logic_vector(31 downto 0);
			wb_rom0_sel_o : out  std_logic_vector(3 downto 0);
			wb_rom0_we_o : out  std_logic;
			wb_rom0_cyc_o : out  std_logic;
			wb_rom0_stb_o : out  std_logic;
			wb_rom0_cti_o : out  std_logic_vector(2 downto 0);
			wb_rom0_bte_o : out  std_logic_vector(1 downto 0);
			wb_rom0_dat_i : in  std_logic_vector(31 downto 0);
			wb_rom0_ack_i : in  std_logic;
			wb_rom0_err_i : in  std_logic;
			wb_rom0_rty_i : in  std_logic
		);
	end component  picorv_intercon;
	
	
	
begin

end architecture RTL;
