//////////////////////////////////////////////////////////////////////////////////
// Company: 		Analog Devices, Inc.
// Engineer: 		MKH
// Create Date:   05-14-2012 
//////////////////////////////////////////////////////////////////////////////////
module main_memory_read_controller
#(
   // ADC_MAX_DATA_SIZE
   parameter ADC_MAX_DATA_SIZE = 16,

   // BRAM_WORD_NUM
   parameter BRAM_WORD_NUM = 8

   )

   (
    //============================================= 
    // Read Cycle Data and Clock Signals    
    //============================================= 

    // Data from BRAM block.
    input  [ADC_MAX_DATA_SIZE*BRAM_WORD_NUM-1:0]   i_read_mux_bram_data,
    
    // Read address count from BRAM block
    input  [4:0]                                   i_read_mux_bram_cnt, 

    // Output data from read cycle, to USB controller
    output [15:0]                                  o_read_mux_data
    
    );
   
   //==========================================================================
   // REGS & WIRES
   //==========================================================================
   reg  [8:0]   read_mux_data_split;
   
   wire         read_mux_bram_idx;
   wire [4:0]   read_mux_bram_cnt;

   //==========================================================================
   // Assignments
   //==========================================================================
   assign read_mux_bram_idx = i_read_mux_bram_cnt[0];
   assign read_mux_bram_cnt = i_read_mux_bram_cnt[4:1];
   
   //==========================================================================
   // Mux read data output
   //==========================================================================
   always @(*)
      if(read_mux_bram_idx == 1'b0)
         read_mux_data_split <= {1'b0, i_read_mux_bram_data[((read_mux_bram_cnt*17)+9) +: 8]};
      else
         read_mux_data_split <= {i_read_mux_bram_data[(read_mux_bram_cnt*17) +: 9]};
            
   assign o_read_mux_data = {7'b0, read_mux_data_split};

endmodule
 