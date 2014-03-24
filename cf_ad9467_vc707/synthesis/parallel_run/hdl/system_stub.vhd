-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
  port (
    sm_fan_pwm_net_vcc : out std_logic;
    ddr_memory_we_n : out std_logic;
    ddr_memory_ras_n : out std_logic;
    ddr_memory_odt : out std_logic;
    ddr_memory_dqs_n : inout std_logic_vector(7 downto 0);
    ddr_memory_dqs : inout std_logic_vector(7 downto 0);
    ddr_memory_dq : inout std_logic_vector(63 downto 0);
    ddr_memory_dm : out std_logic_vector(7 downto 0);
    ddr_memory_ddr3_rst : out std_logic;
    ddr_memory_cs_n : out std_logic;
    ddr_memory_clk_n : out std_logic;
    ddr_memory_clk : out std_logic;
    ddr_memory_cke : out std_logic;
    ddr_memory_cas_n : out std_logic;
    ddr_memory_ba : out std_logic_vector(2 downto 0);
    ddr_memory_addr : out std_logic_vector(13 downto 0);
    RS232_Uart_1_sout : out std_logic;
    RS232_Uart_1_sin : in std_logic;
    RESET : in std_logic;
    CLK_P : in std_logic;
    CLK_N : in std_logic;
    adc_clk_in_p : in std_logic;
    adc_clk_in_n : in std_logic;
    adc_data_in_p : in std_logic_vector(7 downto 0);
    adc_data_in_n : in std_logic_vector(7 downto 0);
    adc_data_or_p : in std_logic;
    adc_data_or_n : in std_logic;
    spi_cs0n : out std_logic;
    spi_cs1n : out std_logic;
    spi_clk : out std_logic;
    spi_sdio : inout std_logic;
    up_status : out std_logic_vector(7 downto 0);
    lcd : inout std_logic_vector(6 downto 0)
  );
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
    port (
      sm_fan_pwm_net_vcc : out std_logic;
      ddr_memory_we_n : out std_logic;
      ddr_memory_ras_n : out std_logic;
      ddr_memory_odt : out std_logic;
      ddr_memory_dqs_n : inout std_logic_vector(7 downto 0);
      ddr_memory_dqs : inout std_logic_vector(7 downto 0);
      ddr_memory_dq : inout std_logic_vector(63 downto 0);
      ddr_memory_dm : out std_logic_vector(7 downto 0);
      ddr_memory_ddr3_rst : out std_logic;
      ddr_memory_cs_n : out std_logic;
      ddr_memory_clk_n : out std_logic;
      ddr_memory_clk : out std_logic;
      ddr_memory_cke : out std_logic;
      ddr_memory_cas_n : out std_logic;
      ddr_memory_ba : out std_logic_vector(2 downto 0);
      ddr_memory_addr : out std_logic_vector(13 downto 0);
      RS232_Uart_1_sout : out std_logic;
      RS232_Uart_1_sin : in std_logic;
      RESET : in std_logic;
      CLK_P : in std_logic;
      CLK_N : in std_logic;
      adc_clk_in_p : in std_logic;
      adc_clk_in_n : in std_logic;
      adc_data_in_p : in std_logic_vector(7 downto 0);
      adc_data_in_n : in std_logic_vector(7 downto 0);
      adc_data_or_p : in std_logic;
      adc_data_or_n : in std_logic;
      spi_cs0n : out std_logic;
      spi_cs1n : out std_logic;
      spi_clk : out std_logic;
      spi_sdio : inout std_logic;
      up_status : out std_logic_vector(7 downto 0);
      lcd : inout std_logic_vector(6 downto 0)
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
    port map (
      sm_fan_pwm_net_vcc => sm_fan_pwm_net_vcc,
      ddr_memory_we_n => ddr_memory_we_n,
      ddr_memory_ras_n => ddr_memory_ras_n,
      ddr_memory_odt => ddr_memory_odt,
      ddr_memory_dqs_n => ddr_memory_dqs_n,
      ddr_memory_dqs => ddr_memory_dqs,
      ddr_memory_dq => ddr_memory_dq,
      ddr_memory_dm => ddr_memory_dm,
      ddr_memory_ddr3_rst => ddr_memory_ddr3_rst,
      ddr_memory_cs_n => ddr_memory_cs_n,
      ddr_memory_clk_n => ddr_memory_clk_n,
      ddr_memory_clk => ddr_memory_clk,
      ddr_memory_cke => ddr_memory_cke,
      ddr_memory_cas_n => ddr_memory_cas_n,
      ddr_memory_ba => ddr_memory_ba,
      ddr_memory_addr => ddr_memory_addr,
      RS232_Uart_1_sout => RS232_Uart_1_sout,
      RS232_Uart_1_sin => RS232_Uart_1_sin,
      RESET => RESET,
      CLK_P => CLK_P,
      CLK_N => CLK_N,
      adc_clk_in_p => adc_clk_in_p,
      adc_clk_in_n => adc_clk_in_n,
      adc_data_in_p => adc_data_in_p,
      adc_data_in_n => adc_data_in_n,
      adc_data_or_p => adc_data_or_p,
      adc_data_or_n => adc_data_or_n,
      spi_cs0n => spi_cs0n,
      spi_cs1n => spi_cs1n,
      spi_clk => spi_clk,
      spi_sdio => spi_sdio,
      up_status => up_status,
      lcd => lcd
    );

end architecture STRUCTURE;

