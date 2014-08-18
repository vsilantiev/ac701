-------------------------------------------------------------------------------
-- system_util_spi_3w_0_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library util_spi_3w_v1_00_a;
use util_spi_3w_v1_00_a.all;

entity system_util_spi_3w_0_wrapper is
  port (
    m_clk : in std_logic;
    x_csn : in std_logic_vector(1 downto 0);
    x_clk : in std_logic;
    x_mosi : in std_logic;
    x_miso : out std_logic;
    spi_cs0n : out std_logic;
    spi_cs1n : out std_logic;
    spi_clk : out std_logic;
    debug_data : out std_logic_vector(63 downto 0);
    debug_trigger : out std_logic_vector(7 downto 0);
    spi_sdio_I : in std_logic;
    spi_sdio_O : out std_logic;
    spi_sdio_T : out std_logic
  );
end system_util_spi_3w_0_wrapper;

architecture STRUCTURE of system_util_spi_3w_0_wrapper is

  component util_spi_3w is
    port (
      m_clk : in std_logic;
      x_csn : in std_logic_vector(1 downto 0);
      x_clk : in std_logic;
      x_mosi : in std_logic;
      x_miso : out std_logic;
      spi_cs0n : out std_logic;
      spi_cs1n : out std_logic;
      spi_clk : out std_logic;
      debug_data : out std_logic_vector(63 downto 0);
      debug_trigger : out std_logic_vector(7 downto 0);
      spi_sdio_I : in std_logic;
      spi_sdio_O : out std_logic;
      spi_sdio_T : out std_logic
    );
  end component;

begin

  util_spi_3w_0 : util_spi_3w
    port map (
      m_clk => m_clk,
      x_csn => x_csn,
      x_clk => x_clk,
      x_mosi => x_mosi,
      x_miso => x_miso,
      spi_cs0n => spi_cs0n,
      spi_cs1n => spi_cs1n,
      spi_clk => spi_clk,
      debug_data => debug_data,
      debug_trigger => debug_trigger,
      spi_sdio_I => spi_sdio_I,
      spi_sdio_O => spi_sdio_O,
      spi_sdio_T => spi_sdio_T
    );

end architecture STRUCTURE;

