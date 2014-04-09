//////////////////////////////////////////////////////////////////////////////////
// Company: Analog Devices Inc.
// Engineer: MS
// Create Date: 08/28/2007 
//////////////////////////////////////////////////////////////////////////////////

`define cr_REG_06										8'h06
`define dv_REG_06										8'h00

module spi_fpga_reg
(
	input I_clk,					// Master clock
	input I_enable,				// Enable for memory access
	input I_wen,					// Register write enable
	input [7:0] I_addr,			// Input read/write address
	input [7:0] I_din,			// Input data

	output reg [7:0] O_dout,	// Output data for SPI controller
	output reg [7:0] O_reg06 	// Registered output data 	
);

localparam integer DATA_SIZE = 8;		// Data size
localparam integer ADDR_SIZE = 8;		// Address size

// ******* BEGIN register values. (rv_*) *******

wire [DATA_SIZE - 1:0] rv_REG_06;

// ******* END register values. *******

// ******* soft reset not used *******
wire soft_reset_bit = 1'b0;

// Assign data out (tri-state - high impedance if disabled).
always @(*) begin
	if (I_enable) begin
		case (I_addr)
			`cr_REG_06:
				O_dout <= rv_REG_06;
			default:
				O_dout <= 8'h00;
		endcase
	end
	else O_dout <= 8'h00;
end

// ******* BEGIN register instantiation *******

//	register 06
spi_reg_rw # (.DEFAULT_VALUE(`dv_REG_06)) REG_06
(
	.I_clk(I_clk), .I_enable(I_addr == `cr_REG_06), .I_wen(I_wen), .I_reset(soft_reset_bit), .I_din(I_din), .O_dout(rv_REG_06)
);

// ******* END registers. *******

// ******* Register data bits *******
always @(negedge I_enable)
	begin	
		O_reg06 <= rv_REG_06;
	end

endmodule
