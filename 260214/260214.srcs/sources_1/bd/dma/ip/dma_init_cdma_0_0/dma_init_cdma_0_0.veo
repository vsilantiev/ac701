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

// IP VLNV: xilinx.com:user:init_cdma:1.0
// IP Revision: 62

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
dma_init_cdma_0_0 your_instance_name (
  .addr_buf(addr_buf),                                  // output [31 : 0] addr_buf
  .C_M00_AXI_SRC_ADDR(C_M00_AXI_SRC_ADDR),              // input [31 : 0] C_M00_AXI_SRC_ADDR
  .C_M00_AXI_START_CAPTURE(C_M00_AXI_START_CAPTURE),    // input C_M00_AXI_START_CAPTURE
  .C_M00_AXI_BUF0_ADDR(C_M00_AXI_BUF0_ADDR),            // input [31 : 0] C_M00_AXI_BUF0_ADDR
  .C_M00_AXI_BUF1_ADDR(C_M00_AXI_BUF1_ADDR),            // input [31 : 0] C_M00_AXI_BUF1_ADDR
  .C_M00_AXI_BUF2_ADDR(C_M00_AXI_BUF2_ADDR),            // input [31 : 0] C_M00_AXI_BUF2_ADDR
  .C_M00_AXI_BUF3_ADDR(C_M00_AXI_BUF3_ADDR),            // input [31 : 0] C_M00_AXI_BUF3_ADDR
  .C_M00_AXI_BUF4_ADDR(C_M00_AXI_BUF4_ADDR),            // input [31 : 0] C_M00_AXI_BUF4_ADDR
  .C_M00_AXI_BUF5_ADDR(C_M00_AXI_BUF5_ADDR),            // input [31 : 0] C_M00_AXI_BUF5_ADDR
  .C_M00_AXI_BUF6_ADDR(C_M00_AXI_BUF6_ADDR),            // input [31 : 0] C_M00_AXI_BUF6_ADDR
  .C_M00_AXI_BUF7_ADDR(C_M00_AXI_BUF7_ADDR),            // input [31 : 0] C_M00_AXI_BUF7_ADDR
  .C_M00_AXI_BUF8_ADDR(C_M00_AXI_BUF8_ADDR),            // input [31 : 0] C_M00_AXI_BUF8_ADDR
  .C_M00_AXI_BUF9_ADDR(C_M00_AXI_BUF9_ADDR),            // input [31 : 0] C_M00_AXI_BUF9_ADDR
  .C_M00_AXI_BUF10_ADDR(C_M00_AXI_BUF10_ADDR),          // input [31 : 0] C_M00_AXI_BUF10_ADDR
  .C_M00_AXI_BUF11_ADDR(C_M00_AXI_BUF11_ADDR),          // input [31 : 0] C_M00_AXI_BUF11_ADDR
  .C_M00_AXI_BUF12_ADDR(C_M00_AXI_BUF12_ADDR),          // input [31 : 0] C_M00_AXI_BUF12_ADDR
  .C_M00_AXI_BUF13_ADDR(C_M00_AXI_BUF13_ADDR),          // input [31 : 0] C_M00_AXI_BUF13_ADDR
  .C_M00_AXI_BUF14_ADDR(C_M00_AXI_BUF14_ADDR),          // input [31 : 0] C_M00_AXI_BUF14_ADDR
  .C_M00_AXI_BUF15_ADDR(C_M00_AXI_BUF15_ADDR),          // input [31 : 0] C_M00_AXI_BUF15_ADDR
  .m00_axi_irq_end_transfer(m00_axi_irq_end_transfer),  // output m00_axi_irq_end_transfer
  .m00_axi_awaddr(m00_axi_awaddr),                      // output [31 : 0] m00_axi_awaddr
  .m00_axi_awprot(m00_axi_awprot),                      // output [2 : 0] m00_axi_awprot
  .m00_axi_awvalid(m00_axi_awvalid),                    // output m00_axi_awvalid
  .m00_axi_awready(m00_axi_awready),                    // input m00_axi_awready
  .m00_axi_wdata(m00_axi_wdata),                        // output [31 : 0] m00_axi_wdata
  .m00_axi_wstrb(m00_axi_wstrb),                        // output [3 : 0] m00_axi_wstrb
  .m00_axi_wvalid(m00_axi_wvalid),                      // output m00_axi_wvalid
  .m00_axi_wready(m00_axi_wready),                      // input m00_axi_wready
  .m00_axi_bresp(m00_axi_bresp),                        // input [1 : 0] m00_axi_bresp
  .m00_axi_bvalid(m00_axi_bvalid),                      // input m00_axi_bvalid
  .m00_axi_bready(m00_axi_bready),                      // output m00_axi_bready
  .m00_axi_araddr(m00_axi_araddr),                      // output [31 : 0] m00_axi_araddr
  .m00_axi_arprot(m00_axi_arprot),                      // output [2 : 0] m00_axi_arprot
  .m00_axi_arvalid(m00_axi_arvalid),                    // output m00_axi_arvalid
  .m00_axi_arready(m00_axi_arready),                    // input m00_axi_arready
  .m00_axi_rdata(m00_axi_rdata),                        // input [31 : 0] m00_axi_rdata
  .m00_axi_rresp(m00_axi_rresp),                        // input [1 : 0] m00_axi_rresp
  .m00_axi_rvalid(m00_axi_rvalid),                      // input m00_axi_rvalid
  .m00_axi_rready(m00_axi_rready),                      // output m00_axi_rready
  .m00_axi_aclk(m00_axi_aclk),                          // input m00_axi_aclk
  .m00_axi_aresetn(m00_axi_aresetn),                    // input m00_axi_aresetn
  .m00_axi_init_axi_txn(m00_axi_init_axi_txn),          // input m00_axi_init_axi_txn
  .m00_axi_error(m00_axi_error),                        // output m00_axi_error
  .m00_axi_txn_done(m00_axi_txn_done)                  // output m00_axi_txn_done
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file dma_init_cdma_0_0.v when simulating
// the core, dma_init_cdma_0_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

