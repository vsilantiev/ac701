//////////////////////////////////////////////////////////////////////////////////
// Company:             Analog Devices, Inc.
// Engineer:            MKH
// Create Date:   05-15-2012 
//////////////////////////////////////////////////////////////////////////////////
module dut_format #
   (
    parameter ADC_MAX_DATA_SIZE = 16,
    parameter BRAM_WORD_NUM     = 16
   )
   (
   //============================================= 
   // Data, Clock and Control Inputs    
   //============================================= 

   // Input data bus
   input      [16:0]                                dut_format_data_in,

   // Input data clock
   input                                            dut_format_clk,

   // Active low, master reset from FIFO5 USB controller
   input                                            dut_format_reset_n,
   
   // System ready signal
   input                                            dut_format_system_ready,
      
   //============================================= 
   // Data Outputs    
   //============================================= 

   // Data enable signal for block RAM
   output                                           dut_format_bram_data_en,
   
   // Data outputs for block RAM
   output     [ADC_MAX_DATA_SIZE*BRAM_WORD_NUM-1:0] dut_format_bram_data_out

   );

   //==========================================================================
   // REGS & WIRES
   //==========================================================================
   reg                                              dut_format_bram_data_en_reg;
   reg  [3:0]                                       dut_format_clk_count;
   reg  [ADC_MAX_DATA_SIZE*BRAM_WORD_NUM-1:0]       dut_format_pipe;
   reg  [ADC_MAX_DATA_SIZE*BRAM_WORD_NUM-1:0]       dut_format_bram_data_out_reg;

   //==========================================================================
   // Count clock cycles
   //==========================================================================
   always @(posedge dut_format_clk or negedge dut_format_reset_n)
      if(dut_format_reset_n == 1'b0)
         dut_format_clk_count <= 4'b0;
      else if(dut_format_system_ready == 1'b1)
         dut_format_clk_count <= dut_format_clk_count + 1;

   //==========================================================================
   // Pipeline data
   //==========================================================================
   always @(posedge dut_format_clk)
      dut_format_pipe <= {dut_format_data_in, dut_format_pipe[ADC_MAX_DATA_SIZE*BRAM_WORD_NUM-1:ADC_MAX_DATA_SIZE]};

   //==========================================================================
   // Generate block RAM output enable signal 
   //==========================================================================
   always @(posedge dut_format_clk or negedge dut_format_reset_n)
      if(dut_format_reset_n == 1'b0)
         dut_format_bram_data_en_reg <= 1'b0;
      else
         dut_format_bram_data_en_reg <= {dut_format_clk_count == 4'b1111};
                     
   assign dut_format_bram_data_en = dut_format_bram_data_en_reg;

   //==========================================================================
   // Register block RAM output data
   //==========================================================================
   always @(posedge dut_format_clk)
      if(dut_format_bram_data_en_reg == 1'b1)
         dut_format_bram_data_out_reg <= dut_format_pipe;

   assign dut_format_bram_data_out = dut_format_bram_data_out_reg;

endmodule
