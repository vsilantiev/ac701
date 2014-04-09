//////////////////////////////////////////////////////////////////////////////////
// Company: 		Analog Devices, Inc.
// Engineer: 		MKH
// Create Date:   18 October 2013 
//////////////////////////////////////////////////////////////////////////////////
module fpga_dig_top #(

   // ADC_MAX_DATA_SIZE
   parameter ADC_MAX_DATA_SIZE = 17,

   // BRAM_WORD_NUM
   // Number of data words per write/read enable
   parameter BRAM_WORD_NUM = 16

   )

  (
   //============================================= 
   // ADC Data and Clock Inputs    
   //============================================= 

   // Source-synchronous data clock inputs
   input                             lvds_dco_p,
   input                             lvds_dco_n,

   // Source-synchronous parallel data inputs
   input  [8:0]                      lvds_din_p,
   input  [8:0]                      lvds_din_n,

   //============================================= 
   // USB Control Signals    
   //============================================= 
   
   // master reset, active low, synchronous with usb_read_clk
   input                             usb_master_rst_n,
        
   // read enable, active low, synchronous with usb_read_clk
   input                             usb_read_en_n,
    
   // read clock, 48 MHz, always active except when write enable is active
   input                             usb_read_clk,
    
   // data ready indicator
   output                            usb_ready,

   //============================================= 
   // SPI Control Signals    
   //============================================= 
    
   // SPI clock
   input                             spi_sclk,

   // SPI chip select, active low
   input                             spi_csb_n,

   // SPI serial data input
   input                             spi_sdi,

   // SPI serial data output
   output                            spi_sdo,
   
   //============================================= 
   // Misc Control Signals    
   //============================================= 

   // external data capture trigger, SMA1, J7
   input                             ext_trig,            
    
   // system clock ready indicator, SMA2, J5
   output                            sysclk_ready,         

   //============================================= 
   // Data Output to USB Controller    
   //============================================= 
    
   // data output to USB
   output [15:0]                     usb_data_out
   );					

   //-------------------------------------------------------------------------------------------
   // Wire declarations
   //-------------------------------------------------------------------------------------------
   wire                                       data_clk;
   wire                                       data_clk_rdy;
   wire                                       ext_trig_en;
   wire [7:0]                                 spi_reg_0x0006;
   wire [16:0]                                data_in;
   wire [ADC_MAX_DATA_SIZE*BRAM_WORD_NUM-1:0] main_memory_bram_wr_data;

   //-------------------------------------------------------------------------------------------
   // Assignments
   //-------------------------------------------------------------------------------------------
   assign usb_ready        = 1'b1;
   assign ext_trig_en      = spi_reg_0x0006[1];
   assign sysclk_ready     = data_clk_rdy;

   //-------------------------------------------------------------------------------------------
   // Instantiate SPI controller
   //
   // SPI Map
   // reg0006[1]   external trigger enable, 0 = disable, 1 = enable
   //
   //-------------------------------------------------------------------------------------------
   spi_fpga_top 
      spi_fpga_top 
       (// Outputs
        .O_sdo                           (spi_sdo), 
        .O_reg06                         (spi_reg_0x0006),
        // Inputs
        .I_sclk                          (spi_sclk),
        ._I_csb                          (spi_csb_n),
        .I_sdi                           (spi_sdi));

   //-------------------------------------------------------------------------------------------
   // Capture data, 16 bits with OTR in MSB position
   //-------------------------------------------------------------------------------------------
   capture 
      capture 
       (// Outputs
        .data_clk                        (data_clk), 
        .data_clk_rdy                    (data_clk_rdy), 
        .data_out                        (data_in),
        // Inputs
        .reset_n                         (usb_master_rst_n),
        .dco_p                           (lvds_dco_p), 
        .dco_n                           (lvds_dco_n),
        .din_p                           (lvds_din_p), 
        .din_n                           (lvds_din_n)); 

   //==========================================================================
   // Format for Block RAM
   //==========================================================================
   dut_format 
      #(// Parameters
        .ADC_MAX_DATA_SIZE               (ADC_MAX_DATA_SIZE),
        .BRAM_WORD_NUM                   (BRAM_WORD_NUM)
        )
      dut_format
       (// Outputs
        .dut_format_bram_data_en         (main_memory_bram_wr_en),
        .dut_format_bram_data_out        (main_memory_bram_wr_data),
        // Inputs
        .dut_format_reset_n              (usb_master_rst_n),
        .dut_format_clk                  (data_clk),
        .dut_format_system_ready         (data_clk_rdy),
        .dut_format_data_in              (data_in));
      
   //==========================================================================
   // Write To and Read From FIFO
   //==========================================================================
   main_memory_top 
      #(// Parameters
        .ADC_MAX_DATA_SIZE               (ADC_MAX_DATA_SIZE),
        .BRAM_WORD_NUM                   (BRAM_WORD_NUM)
        )
      main_memory_top
       (// Outputs
        .o_main_memory_rd_data           (usb_data_out),
        // Inputs
        .i_main_memory_reset_n           (usb_master_rst_n),
        .i_main_memory_ext_trig          (ext_trig),
        .i_main_memory_ext_trig_en       (ext_trig_en),
        .i_main_memory_wr_clk            (data_clk),
        .i_main_memory_bram_wr_clk_en    (main_memory_bram_wr_en),
        .i_main_memory_bram_wr_data      (main_memory_bram_wr_data),
        .i_main_memory_rd_en_n           (usb_read_en_n),
        .i_main_memory_rd_clk            (usb_read_clk)); 

endmodule
