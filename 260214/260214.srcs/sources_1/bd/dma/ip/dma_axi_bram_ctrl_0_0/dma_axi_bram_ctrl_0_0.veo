// (c) Copyright 1995-2014 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:ip:axi_bram_ctrl:3.0
// IP Revision: 2

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
dma_axi_bram_ctrl_0_0 your_instance_name (
  .s_axi_aclk(s_axi_aclk),        // input s_axi_aclk
  .s_axi_aresetn(s_axi_aresetn),  // input s_axi_aresetn
  .s_axi_awaddr(s_axi_awaddr),    // input [18 : 0] s_axi_awaddr
  .s_axi_awprot(s_axi_awprot),    // input [2 : 0] s_axi_awprot
  .s_axi_awvalid(s_axi_awvalid),  // input s_axi_awvalid
  .s_axi_awready(s_axi_awready),  // output s_axi_awready
  .s_axi_wdata(s_axi_wdata),      // input [31 : 0] s_axi_wdata
  .s_axi_wstrb(s_axi_wstrb),      // input [3 : 0] s_axi_wstrb
  .s_axi_wvalid(s_axi_wvalid),    // input s_axi_wvalid
  .s_axi_wready(s_axi_wready),    // output s_axi_wready
  .s_axi_bresp(s_axi_bresp),      // output [1 : 0] s_axi_bresp
  .s_axi_bvalid(s_axi_bvalid),    // output s_axi_bvalid
  .s_axi_bready(s_axi_bready),    // input s_axi_bready
  .s_axi_araddr(s_axi_araddr),    // input [18 : 0] s_axi_araddr
  .s_axi_arprot(s_axi_arprot),    // input [2 : 0] s_axi_arprot
  .s_axi_arvalid(s_axi_arvalid),  // input s_axi_arvalid
  .s_axi_arready(s_axi_arready),  // output s_axi_arready
  .s_axi_rdata(s_axi_rdata),      // output [31 : 0] s_axi_rdata
  .s_axi_rresp(s_axi_rresp),      // output [1 : 0] s_axi_rresp
  .s_axi_rvalid(s_axi_rvalid),    // output s_axi_rvalid
  .s_axi_rready(s_axi_rready),    // input s_axi_rready
  .bram_rst_a(bram_rst_a),        // output bram_rst_a
  .bram_clk_a(bram_clk_a),        // output bram_clk_a
  .bram_en_a(bram_en_a),          // output bram_en_a
  .bram_we_a(bram_we_a),          // output [3 : 0] bram_we_a
  .bram_addr_a(bram_addr_a),      // output [18 : 0] bram_addr_a
  .bram_wrdata_a(bram_wrdata_a),  // output [31 : 0] bram_wrdata_a
  .bram_rddata_a(bram_rddata_a),  // input [31 : 0] bram_rddata_a
  .bram_rst_b(bram_rst_b),        // output bram_rst_b
  .bram_clk_b(bram_clk_b),        // output bram_clk_b
  .bram_en_b(bram_en_b),          // output bram_en_b
  .bram_we_b(bram_we_b),          // output [3 : 0] bram_we_b
  .bram_addr_b(bram_addr_b),      // output [18 : 0] bram_addr_b
  .bram_wrdata_b(bram_wrdata_b),  // output [31 : 0] bram_wrdata_b
  .bram_rddata_b(bram_rddata_b)  // input [31 : 0] bram_rddata_b
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file dma_axi_bram_ctrl_0_0.v when simulating
// the core, dma_axi_bram_ctrl_0_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

