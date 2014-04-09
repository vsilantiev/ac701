//////////////////////////////////////////////////////////////////////////////////
// Company: 		Analog Devices, Inc.
// Engineer: 		MKH
// Create Date:   05-14-2012 
//////////////////////////////////////////////////////////////////////////////////
module main_memory_bram_fifo
#(
   // ADC_MAX_DATA_SIZE
   // Max number of ADC bits (resolution), actual number of bits is set using SPI on some ADCs
   // Range = 8 - 16
   parameter ADC_MAX_DATA_SIZE = 16,

   // BRAM_WORD_NUM
   // Number of data words per write/read cycle
   // Range = 1, 2, 4, 8, ... 64 MAX
   parameter BRAM_WORD_NUM = 16
  )

   (
    //============================================= 
    // Write Cycle Data, Clock and Control Signals    
    //============================================= 

    // Parallel input data from channel select and formatting block.
    input  [ADC_MAX_DATA_SIZE*BRAM_WORD_NUM-1:0]     i_bram_fifo_wr_data,

    // Write cycle, data rate clock. 
    input                                            i_bram_fifo_wr_clk,

    // Write clock enable signal from Write Format block. 
    input                                            i_bram_fifo_wr_clk_en,

    //============================================= 
    // Main FIFO Basic Control Signals    
    //============================================= 

    // Asynchronous active low master reset. 
    input                                            i_bram_fifo_reset_n,

    // Asynchronous external data capture trigger, from SMA1 on FIFO5, connector J7.  
    // Active high CMOS, pulse width must be longer than i_bram_fifo_wr_clk period. 
    input                                            i_bram_fifo_ext_trig,

    // Asynchronous external data capture trigger enable signal.  
    // Active high, from SPI register. 
    input                                            i_bram_fifo_ext_trig_en,

    //============================================= 
    // Read Cycle Data, Clock and Control Signals    
    //============================================= 

    // Parallel output data sent to output mux block.
    output [ADC_MAX_DATA_SIZE*BRAM_WORD_NUM-1:0]     o_bram_fifo_rd_data,
 
    // Read address count, lowest 5 bits
    output reg [4:0]                                 o_bram_fifo_rd_cnt,

    // Read cycle, data rate clock. 
    input                                            i_bram_fifo_rd_clk,
    
    // Active low write enable signal.
    input                                            i_bram_fifo_rd_en_n

    );
   
   //==========================================================================
   // LOCAL PARAMETERS
   //==========================================================================

   // Block RAM port width
   localparam  BRAM_DATA_WIDTH  = ADC_MAX_DATA_SIZE*BRAM_WORD_NUM; 

   // Block RAM address width
   localparam  BRAM_ADDR_WIDTH = 12; 
      
   //==========================================================================
   // REGS & WIRES
   //==========================================================================
   reg                         bram_wr_en;
   reg                         write_trig_en;
   reg  [4:0]                  bram_word_num_count;
   reg  [7:0]                  write_en_sync;
   reg  [BRAM_ADDR_WIDTH-1:0]  write_address;
   reg  [BRAM_ADDR_WIDTH-1:0]  read_address;

   wire [4:0]                  bram_word_max_count;

   //==========================================================================
   // Sync write enable and external trigger
   //==========================================================================
   always @(posedge i_bram_fifo_wr_clk, negedge i_bram_fifo_reset_n)
      if(i_bram_fifo_reset_n == 1'b0)
         write_trig_en <= 1'b0;
      else if((i_bram_fifo_ext_trig == 1'b1) || (i_bram_fifo_ext_trig_en == 1'b0))
         write_trig_en <= 1'b1;
   
   always @(posedge i_bram_fifo_wr_clk, negedge i_bram_fifo_reset_n)
      if(i_bram_fifo_reset_n == 1'b0)
         write_en_sync <= 8'b0;
      else if(i_bram_fifo_wr_clk_en == 1'b1)
         write_en_sync <= {write_en_sync[6:0], write_trig_en};

   //==========================================================================
   // Generate write address counter
   //==========================================================================
   always @(posedge i_bram_fifo_wr_clk, negedge i_bram_fifo_reset_n)
      if(i_bram_fifo_reset_n == 1'b0)
         write_address <= {BRAM_ADDR_WIDTH{1'b0}};
      else if((write_en_sync[7] == 1'b1) && (i_bram_fifo_wr_clk_en == 1'b1) && (write_address != {BRAM_ADDR_WIDTH{1'b1}}))
         write_address <= write_address + 1;
   
   //==========================================================================
   // Generate write enable signal, ensure last word is not written over
   //==========================================================================
   always @(posedge i_bram_fifo_wr_clk, negedge i_bram_fifo_reset_n)
      if(i_bram_fifo_reset_n == 1'b0)
         bram_wr_en <= 1'b0;
      else if(write_address == {BRAM_ADDR_WIDTH{1'b1}})   
         bram_wr_en <= 1'b0;
      else 
         bram_wr_en <= (i_bram_fifo_wr_clk_en == 1'b1);

   //==========================================================================
   // Generate read address counter
   //==========================================================================

   // Assign max count based on capture mode
   assign bram_word_max_count = 2*BRAM_WORD_NUM-1;

   // Keep track of BRAM_WORD_NUM count
   always @(posedge i_bram_fifo_rd_clk, negedge i_bram_fifo_reset_n)
      if(i_bram_fifo_reset_n == 1'b0)
         bram_word_num_count <= 5'b0;
      else if(bram_word_num_count == bram_word_max_count)
         bram_word_num_count <= 5'b0;
      else if(i_bram_fifo_rd_en_n == 1'b0)
         bram_word_num_count <= bram_word_num_count + 1;

   // Increment read address once per max BRAM_WORD_NUM count
   always @(posedge i_bram_fifo_rd_clk, negedge i_bram_fifo_reset_n)
      if(i_bram_fifo_reset_n == 1'b0)
         read_address <= {BRAM_ADDR_WIDTH{1'b0}};
      else if((bram_word_num_count == bram_word_max_count) && (i_bram_fifo_rd_en_n == 1'b0))
         read_address <= read_address + 1;
     
   // register read count output (add 1 cycle delay to line up output)
   always @(posedge i_bram_fifo_rd_clk)
      o_bram_fifo_rd_cnt <= bram_word_num_count;

   //==========================================================================
   // Infer block RAM instances, width depends on ADC_MAX_DATA_SIZE
   //==========================================================================
   main_memory_bram
      #(// Parameters
        .BRAM_DATA_WIDTH                 (BRAM_DATA_WIDTH),
        .BRAM_ADDR_WIDTH                 (BRAM_ADDR_WIDTH))
      main_memory_bram_i0 
       (// Outputs
        .o_bram_rd_data                  (o_bram_fifo_rd_data), 
        // Inputs
        .i_bram_wr_clk                   (i_bram_fifo_wr_clk),
        .i_bram_wr_addr                  (write_address),
        .i_bram_wr_data                  (i_bram_fifo_wr_data), 
        .i_bram_wr_en                    (bram_wr_en),
        .i_bram_rd_clk                   (i_bram_fifo_rd_clk),
        .i_bram_rd_addr                  (read_address));

endmodule
   