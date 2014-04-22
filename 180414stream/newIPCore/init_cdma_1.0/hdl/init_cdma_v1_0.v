	module mydatagen_v1_0 #
	(
		// Users to add parameters here
        parameter C_M00_AXI_DST_ADDR = 32'h007FF800,

        //parameter C_M00_AXI_SRC_ADDR = 32'h40000000,
        parameter C_M00_AXI_LEN_DATA = 32'h00000800,
        parameter integer C_M00_OFFSET_DDR = 4194303,
        //parameter integer C_M00_OFFSET_BRAM = 16,
        //parameter integer C_M00_AXI_BUF_DDR = 8386560,
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Master Bus Interface M00_AXI
		parameter  C_M00_AXI_START_DATA_VALUE	= 32'hAA000000,
		parameter  C_M00_AXI_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_M00_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M00_AXI_DATA_WIDTH	= 32,
		parameter integer C_M00_AXI_TRANSACTIONS_NUM	= 4
	)
	(
		// Users to add ports here
		output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] addr_buf,
		
		input wire [C_M00_AXI_ADDR_WIDTH-1 : 0] C_M00_AXI_SRC_ADDR,
		
		input wire [C_M00_AXI_ADDR_WIDTH-1 : 0] C_M00_AXI_BUF0_ADDR,
		input wire [C_M00_AXI_ADDR_WIDTH-1 : 0] C_M00_AXI_BUF1_ADDR,
		input wire [C_M00_AXI_ADDR_WIDTH-1 : 0] C_M00_AXI_BUF2_ADDR,
		input wire [C_M00_AXI_ADDR_WIDTH-1 : 0] C_M00_AXI_BUF3_ADDR,
		input wire [C_M00_AXI_ADDR_WIDTH-1 : 0] C_M00_AXI_BUF4_ADDR,
		input wire [C_M00_AXI_ADDR_WIDTH-1 : 0] C_M00_AXI_BUF5_ADDR,
		input wire [C_M00_AXI_ADDR_WIDTH-1 : 0] C_M00_AXI_BUF6_ADDR,
		input wire [C_M00_AXI_ADDR_WIDTH-1 : 0] C_M00_AXI_BUF7_ADDR,
		input wire [C_M00_AXI_ADDR_WIDTH-1 : 0] C_M00_AXI_BUF8_ADDR,
		input wire [C_M00_AXI_ADDR_WIDTH-1 : 0] C_M00_AXI_BUF9_ADDR,
		input wire [C_M00_AXI_ADDR_WIDTH-1 : 0] C_M00_AXI_BUF10_ADDR,
		input wire [C_M00_AXI_ADDR_WIDTH-1 : 0] C_M00_AXI_BUF11_ADDR,
		input wire [C_M00_AXI_ADDR_WIDTH-1 : 0] C_M00_AXI_BUF12_ADDR,
		input wire [C_M00_AXI_ADDR_WIDTH-1 : 0] C_M00_AXI_BUF13_ADDR,
		input wire [C_M00_AXI_ADDR_WIDTH-1 : 0] C_M00_AXI_BUF14_ADDR,
		input wire [C_M00_AXI_ADDR_WIDTH-1 : 0] C_M00_AXI_BUF15_ADDR,
		
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Master Bus Interface M00_AXI
		output wire m00_axi_irq_end_transfer,
		input wire  m00_axi_init_axi_txn,
		output wire  m00_axi_error,
		output wire  m00_axi_txn_done,
		input wire  m00_axi_aclk,
		input wire  m00_axi_aresetn,
		output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_awaddr,
		output wire [2 : 0] m00_axi_awprot,
		output wire  m00_axi_awvalid,
		input wire  m00_axi_awready,
		output wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_wdata,
		output wire [C_M00_AXI_DATA_WIDTH/8-1 : 0] m00_axi_wstrb,
		output wire  m00_axi_wvalid,
		input wire  m00_axi_wready,
		input wire [1 : 0] m00_axi_bresp,
		input wire  m00_axi_bvalid,
		output wire  m00_axi_bready,
		output wire [C_M00_AXI_ADDR_WIDTH-1 : 0] m00_axi_araddr,
		output wire [2 : 0] m00_axi_arprot,
		output wire  m00_axi_arvalid,
		input wire  m00_axi_arready,
		input wire [C_M00_AXI_DATA_WIDTH-1 : 0] m00_axi_rdata,
		input wire [1 : 0] m00_axi_rresp,
		input wire  m00_axi_rvalid,
		output wire  m00_axi_rready
	);
// Instantiation of Axi Bus Interface M00_AXI
	mydatagen_v1_0_M00_AXI # (
	    .C_M_DST_ADDR(C_M00_AXI_DST_ADDR),
	    
	    .C_M_LEN_DATA(C_M00_AXI_LEN_DATA),
	    //.C_M_OFFSET_BRAM(C_M00_OFFSET_BRAM),
		.C_M_OFFSET_DDR(C_M00_OFFSET_DDR),
		.C_M_START_DATA_VALUE(C_M00_AXI_START_DATA_VALUE),
		.C_M_TARGET_SLAVE_BASE_ADDR(C_M00_AXI_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_ADDR_WIDTH(C_M00_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M00_AXI_DATA_WIDTH),
		.C_M_TRANSACTIONS_NUM(C_M00_AXI_TRANSACTIONS_NUM)
	) mydatagen_v1_0_M00_AXI_inst (
                      
	      .C_M_BUF0_ADDR(C_M00_AXI_BUF0_ADDR),
	      .C_M_BUF1_ADDR(C_M00_AXI_BUF1_ADDR),
	      .C_M_BUF2_ADDR(C_M00_AXI_BUF2_ADDR),
	      .C_M_BUF3_ADDR(C_M00_AXI_BUF3_ADDR),
	      .C_M_BUF4_ADDR(C_M00_AXI_BUF4_ADDR),
	      .C_M_BUF5_ADDR(C_M00_AXI_BUF5_ADDR),
	      .C_M_BUF6_ADDR(C_M00_AXI_BUF6_ADDR),
	      .C_M_BUF7_ADDR(C_M00_AXI_BUF7_ADDR),
	      .C_M_BUF8_ADDR(C_M00_AXI_BUF8_ADDR),
	      .C_M_BUF9_ADDR(C_M00_AXI_BUF9_ADDR),
	      .C_M_BUF10_ADDR(C_M00_AXI_BUF10_ADDR),
	      .C_M_BUF11_ADDR(C_M00_AXI_BUF11_ADDR),
	      .C_M_BUF12_ADDR(C_M00_AXI_BUF12_ADDR),
	      .C_M_BUF13_ADDR(C_M00_AXI_BUF13_ADDR),
	      .C_M_BUF14_ADDR(C_M00_AXI_BUF14_ADDR),
	      .C_M_BUF15_ADDR(C_M00_AXI_BUF15_ADDR),
	     
	     
	     .C_M_SRC_ADDR(C_M00_AXI_SRC_ADDR),
	     .ADDR_BUF(addr_buf),
		.INIT_AXI_TXN(m00_axi_init_axi_txn),
		.M_IRQ_END_TRANS(m00_axi_irq_end_transfer),
		.ERROR(m00_axi_error),
		.TXN_DONE(m00_axi_txn_done),
		.M_AXI_ACLK(m00_axi_aclk),
		.M_AXI_ARESETN(m00_axi_aresetn),
		.M_AXI_AWADDR(m00_axi_awaddr),
		.M_AXI_AWPROT(m00_axi_awprot),
		.M_AXI_AWVALID(m00_axi_awvalid),
		.M_AXI_AWREADY(m00_axi_awready),
		.M_AXI_WDATA(m00_axi_wdata),
		.M_AXI_WSTRB(m00_axi_wstrb),
		.M_AXI_WVALID(m00_axi_wvalid),
		.M_AXI_WREADY(m00_axi_wready),
		.M_AXI_BRESP(m00_axi_bresp),
		.M_AXI_BVALID(m00_axi_bvalid),
		.M_AXI_BREADY(m00_axi_bready),
		.M_AXI_ARADDR(m00_axi_araddr),
		.M_AXI_ARPROT(m00_axi_arprot),
		.M_AXI_ARVALID(m00_axi_arvalid),
		.M_AXI_ARREADY(m00_axi_arready),
		.M_AXI_RDATA(m00_axi_rdata),
		.M_AXI_RRESP(m00_axi_rresp),
		.M_AXI_RVALID(m00_axi_rvalid),
		.M_AXI_RREADY(m00_axi_rready)
	);

	// Add user logic here
	// User logic ends

	endmodule
