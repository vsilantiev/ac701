//////////////////////////////////////////////////////////////////////////////////
// Company: 		Analog Devices, Inc.
// Engineer: 		MKH
// Create Date:   18 October 2013 
//////////////////////////////////////////////////////////////////////////////////
module capture 
   (
   
   //============================================= 
   // Data, Clock and Control Inputs    
   //============================================= 

   // Input clock
   input                   dco_p,
   input                   dco_n,
   
   // Input data bus
   input  [8:0]            din_p,
   input  [8:0]            din_n,

   // Master reset, active low
   input                   reset_n,
      
   //============================================= 
   // Data Outputs    
   //============================================= 

   // Data clock 
   output                  data_clk,

   // Data clock enable signal
   output                  data_clk_rdy,
   
   // Data output
   output [16:0]           data_out
   
   );
   
   //==========================================================================
   // Register and wire declarations
   //==========================================================================
   reg          rdy_reg;
   reg  [1:0]   rdy_cnt;
   reg  [8:0]   dr1;
   reg  [8:0]   df1;
   reg  [8:0]   df2;
   reg  [16:0]  data1;
   reg  [16:0]  data2; 

   wire [8:0]   dr;
   wire [8:0]   df;
   wire [8:0]   data_in;

   //==========================================================================
   // Input buffers
   //==========================================================================
   IBUFGDS ibufgds     (.I(dco_p), .IB(dco_n), .O(data_clk));
   IBUFDS  ibufds[8:0] (.I(din_p), .IB(din_n), .O(data_in));

   //==========================================================================
   // Capture DDR data
   //==========================================================================
   IDDR #(.DDR_CLK_EDGE("SAME_EDGE_PIPELINED")) 
     iddr[8:0] 
     (// Outputs
      .Q1              (dr),
      .Q2              (df),
      // Inputs
		.D               (data_in), 
      .C               (data_clk),  
		.CE              (1'b1), 
      .S               (1'b0), 
      .R               (1'b0));

   //==========================================================================
   // Pipeline data
   //==========================================================================
   always @(posedge data_clk)
      begin
         dr1 <= dr;
         df1 <= df;
         df2 <= df1;
      end
	
   //==========================================================================
   // Register output
   //==========================================================================
   always @(posedge data_clk)
      begin
         data1 <= {df2[8],
                   df2[7], dr1[7], 
                   df2[6], dr1[6],
                   df2[5], dr1[5],
                   df2[4], dr1[4],
                   df2[3], dr1[3],
                   df2[2], dr1[2],
                   df2[1], dr1[1],
                   df2[0], dr1[0]};
         data2 <= data1;
      end
      
   assign data_out = data2;

   //==========================================================================
   // Generate ready output
   //==========================================================================
   always @(posedge data_clk, negedge reset_n)
      if(reset_n == 1'b0)
         rdy_cnt <= 2'b0;
      else if(rdy_cnt != 2'b11)
         rdy_cnt <= rdy_cnt + 1;
	
   always @(posedge data_clk, negedge reset_n)
      if(reset_n == 1'b0)
         rdy_reg <= 1'b0;
      else if(rdy_cnt == 2'b11)
         rdy_reg <= 1'b1;
         
   assign data_clk_rdy = rdy_reg;
	
endmodule
