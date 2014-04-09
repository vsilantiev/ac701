//-----------------------------------------------------------------------------
// system_ddr3_sdram_wrapper.v
//-----------------------------------------------------------------------------

(* x_core_info = "axi_7series_ddrx_v1_08_a" *)
module system_ddr3_sdram_wrapper
  (
    clk,
    clk_ref,
    mem_refclk,
    freq_refclk,
    pll_lock,
    sync_pulse,
    aresetn,
    iodelay_ctrl_rdy_i,
    iodelay_ctrl_rdy_o,
    xadc_device_temp_i,
    xadc_device_temp_o,
    init_calib_complete,
    interrupt,
    ddr_addr,
    ddr_ba,
    ddr_cas_n,
    ddr_ck_p,
    ddr_ck_n,
    ddr_cke,
    ddr_cs_n,
    ddr_dm,
    ddr_odt,
    ddr_ras_n,
    ddr_reset_n,
    ddr_parity,
    ddr_we_n,
    ddr_dq,
    ddr_dqs_p,
    ddr_dqs_n,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready
  );
  input clk;
  input clk_ref;
  input mem_refclk;
  input freq_refclk;
  input pll_lock;
  input sync_pulse;
  input aresetn;
  input iodelay_ctrl_rdy_i;
  output iodelay_ctrl_rdy_o;
  input [11:0] xadc_device_temp_i;
  output [11:0] xadc_device_temp_o;
  output init_calib_complete;
  output interrupt;
  output [13:0] ddr_addr;
  output [2:0] ddr_ba;
  output ddr_cas_n;
  output [0:0] ddr_ck_p;
  output [0:0] ddr_ck_n;
  output [0:0] ddr_cke;
  output [0:0] ddr_cs_n;
  output [7:0] ddr_dm;
  output [0:0] ddr_odt;
  output ddr_ras_n;
  output ddr_reset_n;
  output ddr_parity;
  output ddr_we_n;
  inout [63:0] ddr_dq;
  inout [7:0] ddr_dqs_p;
  inout [7:0] ddr_dqs_n;
  input [1:0] s_axi_awid;
  input [31:0] s_axi_awaddr;
  input [7:0] s_axi_awlen;
  input [2:0] s_axi_awsize;
  input [1:0] s_axi_awburst;
  input [0:0] s_axi_awlock;
  input [3:0] s_axi_awcache;
  input [2:0] s_axi_awprot;
  input [3:0] s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0] s_axi_wdata;
  input [63:0] s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0] s_axi_bid;
  output [1:0] s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [1:0] s_axi_arid;
  input [31:0] s_axi_araddr;
  input [7:0] s_axi_arlen;
  input [2:0] s_axi_arsize;
  input [1:0] s_axi_arburst;
  input [0:0] s_axi_arlock;
  input [3:0] s_axi_arcache;
  input [2:0] s_axi_arprot;
  input [3:0] s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [1:0] s_axi_rid;
  output [511:0] s_axi_rdata;
  output [1:0] s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input [31:0] s_axi_ctrl_awaddr;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [31:0] s_axi_ctrl_wdata;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  output [1:0] s_axi_ctrl_bresp;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  input [31:0] s_axi_ctrl_araddr;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  output [31:0] s_axi_ctrl_rdata;
  output [1:0] s_axi_ctrl_rresp;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;

  axi_7series_ddrx
    #(
      .C_ADDR_CMD_MODE ( "1T" ),
      .C_BANK_WIDTH ( 3 ),
      .C_BURST_MODE ( "8" ),
      .C_BURST_TYPE ( "SEQ" ),
      .C_CA_MIRROR ( "OFF" ),
      .C_CK_WIDTH ( 1 ),
      .C_CL ( 6 ),
      .C_COL_WIDTH ( 10 ),
      .C_CMD_PIPE_PLUS1 ( "ON" ),
      .C_CS_WIDTH ( 1 ),
      .C_CKE_WIDTH ( 1 ),
      .C_CWL ( 5 ),
      .C_DATA_BUF_ADDR_WIDTH ( 5 ),
      .C_PHY_CONTROL_MASTER_BANK ( 1 ),
      .C_DM_WIDTH ( 8 ),
      .C_DDR2_DQSN_ENABLE ( "YES" ),
      .C_DQ_WIDTH ( 64 ),
      .C_DQS_WIDTH ( 8 ),
      .C_DRAM_TYPE ( "DDR3" ),
      .C_DRAM_WIDTH ( 8 ),
      .C_ECC ( "OFF" ),
      .C_ECC_TEST ( "OFF" ),
      .C_NBANK_MACHS ( 4 ),
      .C_NCK_PER_CLK ( 4 ),
      .C_NCS_PER_RANK ( 1 ),
      .C_ORDERING ( "NORM" ),
      .C_IODELAY_HP_MODE ( "ON" ),
      .C_BANK_TYPE ( "HR_IO" ),
      .C_DATA_IO_PRIM_TYPE ( "HR_LP" ),
      .C_DATA_IO_IDLE_PWRDWN ( "ON" ),
      .C_IODELAY_GRP ( "DDR3_SDRAM" ),
      .C_OUTPUT_DRV ( "HIGH" ),
      .C_REG_CTRL ( "OFF" ),
      .C_RTT_NOM ( "40" ),
      .C_RTT_WR ( "OFF" ),
      .C_TCK ( 2500 ),
      .C_TCKE ( 5000 ),
      .C_TFAW ( 30000 ),
      .C_TPRDI ( 1000000 ),
      .C_TRAS ( 35000 ),
      .C_TRCD ( 13125 ),
      .C_TREFI ( 7800000 ),
      .C_TRFC ( 110000 ),
      .C_TRP ( 13125 ),
      .C_TRRD ( 6000 ),
      .C_TRTP ( 7500 ),
      .C_TWTR ( 7500 ),
      .C_TZQI ( 128000000 ),
      .C_TZQCS ( 64 ),
      .C_MEM_ADDR_ORDER ( "BANK_ROW_COLUMN" ),
      .C_CAL_WIDTH ( "HALF" ),
      .C_RANKS ( 1 ),
      .C_ODT_WIDTH ( 1 ),
      .C_ROW_WIDTH ( 14 ),
      .C_BYTE_LANES_B0 ( 4'b1111 ),
      .C_BYTE_LANES_B1 ( 4'b1110 ),
      .C_BYTE_LANES_B2 ( 4'b1111 ),
      .C_BYTE_LANES_B3 ( 4'b0000 ),
      .C_BYTE_LANES_B4 ( 4'b0000 ),
      .C_DATA_CTL_B0 ( 4'b1111 ),
      .C_DATA_CTL_B1 ( 4'b0000 ),
      .C_DATA_CTL_B2 ( 4'b1111 ),
      .C_DATA_CTL_B3 ( 4'b0000 ),
      .C_DATA_CTL_B4 ( 4'b0000 ),
      .C_PHY_0_BITLANES ( 48'h3FE3FE3FE2FF ),
      .C_PHY_1_BITLANES ( 48'hFFEF30CB4000 ),
      .C_PHY_2_BITLANES ( 48'h3FE3FE3FE2FF ),
      .C_CK_BYTE_MAP ( 144'h000000000000000000000000000000000012 ),
      .C_ADDR_MAP ( 192'h00000013213613513313912413112913713413A12813813B ),
      .C_BANK_MAP ( 36'h12512A12B ),
      .C_CAS_MAP ( 12'h115 ),
      .C_CKE_MAP ( 96'h000000000000000000000117 ),
      .C_ODT_MAP ( 96'h000000000000000000000112 ),
      .C_CKE_ODT_AUX ( "FALSE" ),
      .C_CS_MAP ( 120'h000000000000000000000000000114 ),
      .C_PARITY_MAP ( 12'h000 ),
      .C_RAS_MAP ( 12'h11A ),
      .C_WE_MAP ( 12'h11B ),
      .C_DQS_BYTE_MAP ( 144'h000000000000000000000302010023222120 ),
      .C_DATA0_MAP ( 96'h209207206205204203202201 ),
      .C_DATA1_MAP ( 96'h219218217216215214213212 ),
      .C_DATA2_MAP ( 96'h229228227226225224223222 ),
      .C_DATA3_MAP ( 96'h239238237236235234233232 ),
      .C_DATA4_MAP ( 96'h009007006005004003002001 ),
      .C_DATA5_MAP ( 96'h019018017016015014013012 ),
      .C_DATA6_MAP ( 96'h029028027026025024023022 ),
      .C_DATA7_MAP ( 96'h039038037036035034033032 ),
      .C_DATA8_MAP ( 96'h000000000000000000000000 ),
      .C_DATA9_MAP ( 96'h000000000000000000000000 ),
      .C_DATA10_MAP ( 96'h000000000000000000000000 ),
      .C_DATA11_MAP ( 96'h000000000000000000000000 ),
      .C_DATA12_MAP ( 96'h000000000000000000000000 ),
      .C_DATA13_MAP ( 96'h000000000000000000000000 ),
      .C_DATA14_MAP ( 96'h000000000000000000000000 ),
      .C_DATA15_MAP ( 96'h000000000000000000000000 ),
      .C_DATA16_MAP ( 96'h000000000000000000000000 ),
      .C_DATA17_MAP ( 96'h000000000000000000000000 ),
      .C_MASK0_MAP ( 108'h000031021011000231221211200 ),
      .C_MASK1_MAP ( 108'h000000000000000000000000000 ),
      .C_SLOT_0_CONFIG ( 8'b00000001 ),
      .C_SLOT_1_CONFIG ( 8'b00000000 ),
      .C_SIM_BYPASS_INIT_CAL ( "FAST" ),
      .C_REFCLK_FREQ ( 200.0 ),
      .C_USE_CS_PORT ( 1 ),
      .C_USE_DM_PORT ( 1 ),
      .C_USE_ODT_PORT ( 1 ),
      .C_USE_EXTERNAL_XADC ( 0 ),
      .C_USE_EXTERNAL_IODELAY_CTRL ( 0 ),
      .C_S_AXI_ID_WIDTH ( 2 ),
      .C_S_AXI_ADDR_WIDTH ( 32 ),
      .C_S_AXI_DATA_WIDTH ( 512 ),
      .C_S_AXI_SUPPORTS_NARROW_BURST ( 0 ),
      .C_RD_WR_ARB_ALGORITHM ( "RD_PRI_REG" ),
      .C_S_AXI_REG_EN0 ( 20'h00000 ),
      .C_S_AXI_REG_EN1 ( 20'h01000 ),
      .C_S_AXI_BASEADDR ( 32'hc0000000 ),
      .C_S_AXI_HIGHADDR ( 32'hffffffff ),
      .C_S_AXI_CTRL_ADDR_WIDTH ( 32 ),
      .C_S_AXI_CTRL_DATA_WIDTH ( 32 ),
      .C_ECC_ONOFF_RESET_VALUE ( 1 )
    )
    DDR3_SDRAM (
      .clk ( clk ),
      .clk_ref ( clk_ref ),
      .mem_refclk ( mem_refclk ),
      .freq_refclk ( freq_refclk ),
      .pll_lock ( pll_lock ),
      .sync_pulse ( sync_pulse ),
      .aresetn ( aresetn ),
      .iodelay_ctrl_rdy_i ( iodelay_ctrl_rdy_i ),
      .iodelay_ctrl_rdy_o ( iodelay_ctrl_rdy_o ),
      .xadc_device_temp_i ( xadc_device_temp_i ),
      .xadc_device_temp_o ( xadc_device_temp_o ),
      .init_calib_complete ( init_calib_complete ),
      .interrupt ( interrupt ),
      .ddr_addr ( ddr_addr ),
      .ddr_ba ( ddr_ba ),
      .ddr_cas_n ( ddr_cas_n ),
      .ddr_ck_p ( ddr_ck_p ),
      .ddr_ck_n ( ddr_ck_n ),
      .ddr_cke ( ddr_cke ),
      .ddr_cs_n ( ddr_cs_n ),
      .ddr_dm ( ddr_dm ),
      .ddr_odt ( ddr_odt ),
      .ddr_ras_n ( ddr_ras_n ),
      .ddr_reset_n ( ddr_reset_n ),
      .ddr_parity ( ddr_parity ),
      .ddr_we_n ( ddr_we_n ),
      .ddr_dq ( ddr_dq ),
      .ddr_dqs_p ( ddr_dqs_p ),
      .ddr_dqs_n ( ddr_dqs_n ),
      .s_axi_awid ( s_axi_awid ),
      .s_axi_awaddr ( s_axi_awaddr ),
      .s_axi_awlen ( s_axi_awlen ),
      .s_axi_awsize ( s_axi_awsize ),
      .s_axi_awburst ( s_axi_awburst ),
      .s_axi_awlock ( s_axi_awlock ),
      .s_axi_awcache ( s_axi_awcache ),
      .s_axi_awprot ( s_axi_awprot ),
      .s_axi_awqos ( s_axi_awqos ),
      .s_axi_awvalid ( s_axi_awvalid ),
      .s_axi_awready ( s_axi_awready ),
      .s_axi_wdata ( s_axi_wdata ),
      .s_axi_wstrb ( s_axi_wstrb ),
      .s_axi_wlast ( s_axi_wlast ),
      .s_axi_wvalid ( s_axi_wvalid ),
      .s_axi_wready ( s_axi_wready ),
      .s_axi_bid ( s_axi_bid ),
      .s_axi_bresp ( s_axi_bresp ),
      .s_axi_bvalid ( s_axi_bvalid ),
      .s_axi_bready ( s_axi_bready ),
      .s_axi_arid ( s_axi_arid ),
      .s_axi_araddr ( s_axi_araddr ),
      .s_axi_arlen ( s_axi_arlen ),
      .s_axi_arsize ( s_axi_arsize ),
      .s_axi_arburst ( s_axi_arburst ),
      .s_axi_arlock ( s_axi_arlock ),
      .s_axi_arcache ( s_axi_arcache ),
      .s_axi_arprot ( s_axi_arprot ),
      .s_axi_arqos ( s_axi_arqos ),
      .s_axi_arvalid ( s_axi_arvalid ),
      .s_axi_arready ( s_axi_arready ),
      .s_axi_rid ( s_axi_rid ),
      .s_axi_rdata ( s_axi_rdata ),
      .s_axi_rresp ( s_axi_rresp ),
      .s_axi_rlast ( s_axi_rlast ),
      .s_axi_rvalid ( s_axi_rvalid ),
      .s_axi_rready ( s_axi_rready ),
      .s_axi_ctrl_awaddr ( s_axi_ctrl_awaddr ),
      .s_axi_ctrl_awvalid ( s_axi_ctrl_awvalid ),
      .s_axi_ctrl_awready ( s_axi_ctrl_awready ),
      .s_axi_ctrl_wdata ( s_axi_ctrl_wdata ),
      .s_axi_ctrl_wvalid ( s_axi_ctrl_wvalid ),
      .s_axi_ctrl_wready ( s_axi_ctrl_wready ),
      .s_axi_ctrl_bresp ( s_axi_ctrl_bresp ),
      .s_axi_ctrl_bvalid ( s_axi_ctrl_bvalid ),
      .s_axi_ctrl_bready ( s_axi_ctrl_bready ),
      .s_axi_ctrl_araddr ( s_axi_ctrl_araddr ),
      .s_axi_ctrl_arvalid ( s_axi_ctrl_arvalid ),
      .s_axi_ctrl_arready ( s_axi_ctrl_arready ),
      .s_axi_ctrl_rdata ( s_axi_ctrl_rdata ),
      .s_axi_ctrl_rresp ( s_axi_ctrl_rresp ),
      .s_axi_ctrl_rvalid ( s_axi_ctrl_rvalid ),
      .s_axi_ctrl_rready ( s_axi_ctrl_rready )
    );

endmodule

