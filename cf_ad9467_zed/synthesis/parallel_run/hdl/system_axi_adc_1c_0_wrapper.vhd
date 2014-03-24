-------------------------------------------------------------------------------
-- system_axi_adc_1c_0_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library axi_adc_1c_v1_00_a;
use axi_adc_1c_v1_00_a.all;

entity system_axi_adc_1c_0_wrapper is
  port (
    adc_clk_in_p : in std_logic;
    adc_clk_in_n : in std_logic;
    adc_data_in_p : in std_logic_vector(7 downto 0);
    adc_data_in_n : in std_logic_vector(7 downto 0);
    adc_data_or_p : in std_logic;
    adc_data_or_n : in std_logic;
    delay_clk : in std_logic;
    up_status : out std_logic_vector(7 downto 0);
    dma_dbg_data : out std_logic_vector(63 downto 0);
    dma_dbg_trigger : out std_logic_vector(7 downto 0);
    adc_clk : out std_logic;
    adc_dbg_data : out std_logic_vector(63 downto 0);
    adc_dbg_trigger : out std_logic_vector(7 downto 0);
    adc_mon_valid : out std_logic;
    adc_mon_data : out std_logic_vector(15 downto 0);
    S_AXIS_S2MM_CLK : in std_logic;
    S_AXIS_S2MM_TVALID : out std_logic;
    S_AXIS_S2MM_TDATA : out std_logic_vector(63 downto 0);
    S_AXIS_S2MM_TKEEP : out std_logic_vector(7 downto 0);
    S_AXIS_S2MM_TLAST : out std_logic;
    S_AXIS_S2MM_TREADY : in std_logic;
    S_AXI_ACLK : in std_logic;
    S_AXI_ARESETN : in std_logic;
    S_AXI_AWADDR : in std_logic_vector(31 downto 0);
    S_AXI_AWVALID : in std_logic;
    S_AXI_WDATA : in std_logic_vector(31 downto 0);
    S_AXI_WSTRB : in std_logic_vector(3 downto 0);
    S_AXI_WVALID : in std_logic;
    S_AXI_BREADY : in std_logic;
    S_AXI_ARADDR : in std_logic_vector(31 downto 0);
    S_AXI_ARVALID : in std_logic;
    S_AXI_RREADY : in std_logic;
    S_AXI_ARREADY : out std_logic;
    S_AXI_RDATA : out std_logic_vector(31 downto 0);
    S_AXI_RRESP : out std_logic_vector(1 downto 0);
    S_AXI_RVALID : out std_logic;
    S_AXI_WREADY : out std_logic;
    S_AXI_BRESP : out std_logic_vector(1 downto 0);
    S_AXI_BVALID : out std_logic;
    S_AXI_AWREADY : out std_logic
  );
end system_axi_adc_1c_0_wrapper;

architecture STRUCTURE of system_axi_adc_1c_0_wrapper is

  component axi_adc_1c is
    generic (
      C_S_AXI_DATA_WIDTH : INTEGER;
      C_S_AXI_ADDR_WIDTH : INTEGER;
      C_S_AXI_MIN_SIZE : std_logic_vector;
      C_USE_WSTRB : INTEGER;
      C_DPHASE_TIMEOUT : INTEGER;
      C_BASEADDR : std_logic_vector;
      C_HIGHADDR : std_logic_vector;
      C_FAMILY : STRING;
      C_NUM_REG : INTEGER;
      C_NUM_MEM : INTEGER;
      C_SLV_AWIDTH : INTEGER;
      C_SLV_DWIDTH : INTEGER;
      C_CF_BUFTYPE : INTEGER
    );
    port (
      adc_clk_in_p : in std_logic;
      adc_clk_in_n : in std_logic;
      adc_data_in_p : in std_logic_vector(7 downto 0);
      adc_data_in_n : in std_logic_vector(7 downto 0);
      adc_data_or_p : in std_logic;
      adc_data_or_n : in std_logic;
      delay_clk : in std_logic;
      up_status : out std_logic_vector(7 downto 0);
      dma_dbg_data : out std_logic_vector(63 downto 0);
      dma_dbg_trigger : out std_logic_vector(7 downto 0);
      adc_clk : out std_logic;
      adc_dbg_data : out std_logic_vector(63 downto 0);
      adc_dbg_trigger : out std_logic_vector(7 downto 0);
      adc_mon_valid : out std_logic;
      adc_mon_data : out std_logic_vector(15 downto 0);
      S_AXIS_S2MM_CLK : in std_logic;
      S_AXIS_S2MM_TVALID : out std_logic;
      S_AXIS_S2MM_TDATA : out std_logic_vector(63 downto 0);
      S_AXIS_S2MM_TKEEP : out std_logic_vector(7 downto 0);
      S_AXIS_S2MM_TLAST : out std_logic;
      S_AXIS_S2MM_TREADY : in std_logic;
      S_AXI_ACLK : in std_logic;
      S_AXI_ARESETN : in std_logic;
      S_AXI_AWADDR : in std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
      S_AXI_AWVALID : in std_logic;
      S_AXI_WDATA : in std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
      S_AXI_WSTRB : in std_logic_vector(((C_S_AXI_DATA_WIDTH/8)-1) downto 0);
      S_AXI_WVALID : in std_logic;
      S_AXI_BREADY : in std_logic;
      S_AXI_ARADDR : in std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);
      S_AXI_ARVALID : in std_logic;
      S_AXI_RREADY : in std_logic;
      S_AXI_ARREADY : out std_logic;
      S_AXI_RDATA : out std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);
      S_AXI_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_RVALID : out std_logic;
      S_AXI_WREADY : out std_logic;
      S_AXI_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_BVALID : out std_logic;
      S_AXI_AWREADY : out std_logic
    );
  end component;

begin

  axi_adc_1c_0 : axi_adc_1c
    generic map (
      C_S_AXI_DATA_WIDTH => 32,
      C_S_AXI_ADDR_WIDTH => 32,
      C_S_AXI_MIN_SIZE => X"000001ff",
      C_USE_WSTRB => 0,
      C_DPHASE_TIMEOUT => 8,
      C_BASEADDR => X"79000000",
      C_HIGHADDR => X"7900ffff",
      C_FAMILY => "zynq",
      C_NUM_REG => 1,
      C_NUM_MEM => 1,
      C_SLV_AWIDTH => 32,
      C_SLV_DWIDTH => 32,
      C_CF_BUFTYPE => 0
    )
    port map (
      adc_clk_in_p => adc_clk_in_p,
      adc_clk_in_n => adc_clk_in_n,
      adc_data_in_p => adc_data_in_p,
      adc_data_in_n => adc_data_in_n,
      adc_data_or_p => adc_data_or_p,
      adc_data_or_n => adc_data_or_n,
      delay_clk => delay_clk,
      up_status => up_status,
      dma_dbg_data => dma_dbg_data,
      dma_dbg_trigger => dma_dbg_trigger,
      adc_clk => adc_clk,
      adc_dbg_data => adc_dbg_data,
      adc_dbg_trigger => adc_dbg_trigger,
      adc_mon_valid => adc_mon_valid,
      adc_mon_data => adc_mon_data,
      S_AXIS_S2MM_CLK => S_AXIS_S2MM_CLK,
      S_AXIS_S2MM_TVALID => S_AXIS_S2MM_TVALID,
      S_AXIS_S2MM_TDATA => S_AXIS_S2MM_TDATA,
      S_AXIS_S2MM_TKEEP => S_AXIS_S2MM_TKEEP,
      S_AXIS_S2MM_TLAST => S_AXIS_S2MM_TLAST,
      S_AXIS_S2MM_TREADY => S_AXIS_S2MM_TREADY,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_AWADDR => S_AXI_AWADDR,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_WDATA => S_AXI_WDATA,
      S_AXI_WSTRB => S_AXI_WSTRB,
      S_AXI_WVALID => S_AXI_WVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_ARADDR => S_AXI_ARADDR,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_RDATA => S_AXI_RDATA,
      S_AXI_RRESP => S_AXI_RRESP,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_BRESP => S_AXI_BRESP,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_AWREADY => S_AXI_AWREADY
    );

end architecture STRUCTURE;

