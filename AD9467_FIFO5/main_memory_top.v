//////////////////////////////////////////////////////////////////////////////////
// Company: 		Analog Devices, Inc.
// Engineer: 		MKH
// Create Date:   05-14-2012 
//////////////////////////////////////////////////////////////////////////////////
module main_memory_top
#(
   // ADC_MAX_DATA_SIZE
   parameter ADC_MAX_DATA_SIZE = 16,

   // BRAM_WORD_NUM
   parameter BRAM_WORD_NUM = 8

  )

   (
    //============================================= 
    // Write Cycle Data and Clock    
    //============================================= 

    // Input clock for FIFO write cycle 
    input                                                         i_main_memory_wr_clk,

    // Input data for block RAM
    input  [ADC_MAX_DATA_SIZE*BRAM_WORD_NUM-1:0]                  i_main_memory_bram_wr_data,

    //============================================= 
    // Write Cycle Control Signals    
    //============================================= 

    // Input clock enable for block RAM 
    input                                                         i_main_memory_bram_wr_clk_en,

    // External data capture trigger
    // Active high, from FIFO5 SMA1, J7, pulse width must be longer than input data period
    input                                                         i_main_memory_ext_trig,

    // External data capture trigger enable
    // Active high, from SPI register
    input                                                         i_main_memory_ext_trig_en,

    //============================================= 
    // Misc Control Signals    
    //============================================= 

    // Master reset, active low, asynchronous
    input                                                         i_main_memory_reset_n,

    //============================================= 
    // Read Cycle Control Signals    
    //=============================================
    
    // Read enable signal, active low  
    input                                                         i_main_memory_rd_en_n,
    
    //============================================= 
    // Read Cycle Data and Clock    
    //=============================================

    // Read clock, 48 MHz, runs continuous except while write enable is active
    input                                                         i_main_memory_rd_clk,  
 
    // Read cycle output data
    output [15:0]                                                 o_main_memory_rd_data

    );

   //==========================================================================
   // REGS & WIRES
   //==========================================================================
   wire [4:0]                                  main_memory_bram_rd_cnt;
   wire [ADC_MAX_DATA_SIZE*BRAM_WORD_NUM-1:0]  main_memory_bram_rd_data;

   //==========================================================================
   // Main Memory BRAM FIFO Block
   //==========================================================================
   main_memory_bram_fifo
     #(
       // Parameters
       .ADC_MAX_DATA_SIZE               (ADC_MAX_DATA_SIZE),
       .BRAM_WORD_NUM                   (BRAM_WORD_NUM))          
      main_memory_bram_fifo
      (
       // Outputs
       .o_bram_fifo_rd_data             (main_memory_bram_rd_data),
       .o_bram_fifo_rd_cnt              (main_memory_bram_rd_cnt),
       // Inputs
       .i_bram_fifo_reset_n             (i_main_memory_reset_n),
       .i_bram_fifo_ext_trig            (i_main_memory_ext_trig),
       .i_bram_fifo_ext_trig_en         (i_main_memory_ext_trig_en),
       .i_bram_fifo_wr_clk              (i_main_memory_wr_clk),
       .i_bram_fifo_wr_clk_en           (i_main_memory_bram_wr_clk_en),
       .i_bram_fifo_wr_data             (i_main_memory_bram_wr_data),
       .i_bram_fifo_rd_en_n             (i_main_memory_rd_en_n),
       .i_bram_fifo_rd_clk              (i_main_memory_rd_clk));

   //==========================================================================
   // Main Memory Read Controller Block
   //==========================================================================
   main_memory_read_controller
     #(
       // Parameters
       .ADC_MAX_DATA_SIZE               (ADC_MAX_DATA_SIZE),
       .BRAM_WORD_NUM                   (BRAM_WORD_NUM))          
      main_memory_read_controller
      (
       // Outputs
       .o_read_mux_data                 (o_main_memory_rd_data),
       // Inputs
       .i_read_mux_bram_data            (main_memory_bram_rd_data),
       .i_read_mux_bram_cnt             (main_memory_bram_rd_cnt));

endmodule 
