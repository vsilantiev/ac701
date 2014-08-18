	module init_axi_dma_v1_0_M00_AXI #
    (
		// The master requires a target slave base address.
    // The master will initiate read and write transactions on the slave with base address specified here as a parameter.
		////parameter  C_M_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		// Width of M_AXI address bus. 
    // The master generates the read and write addresses of width specified as C_M_AXI_ADDR_WIDTH.
		parameter integer C_M_AXI_ADDR_WIDTH	= 32,
		// Width of M_AXI data bus. 
    // The master issues write data and accept read data where the width of the data bus is C_M_AXI_DATA_WIDTH
		parameter integer C_M_AXI_DATA_WIDTH	= 32,
		// Transaction number is the number of write 
    // and read transactions the master will perform as a part of this example memory test.
		parameter integer C_M_TRANSACTIONS_NUM	= 4
	)
	(
		// Users to add ports here
        input wire M_START_CAPTURES,
        
        input wire M_IRQ_END_STR,
        input wire [17:0] M_LEN_REF, // длина ref
        
        output wire M_VALID2STR,
		// User ports ends
		// Do not modify the ports beyond this line

		// Initiate AXI transactions
		// Asserts when ERROR is detected
		// AXI clock signal
		input wire  M_AXI_ACLK,
		// AXI active low reset signal
		input wire  M_AXI_ARESETN,
		// Master Interface Write Address Channel ports. Write address (issued by master)
		output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_AWADDR,
		// Write channel Protection type.
    // This signal indicates the privilege and security level of the transaction,
    // and whether the transaction is a data access or an instruction access.
		output wire [2 : 0] M_AXI_AWPROT,
		// Write address valid. 
    // This signal indicates that the master signaling valid write address and control information.
		output wire  M_AXI_AWVALID,
		// Write address ready. 
    // This signal indicates that the slave is ready to accept an address and associated control signals.
		input wire  M_AXI_AWREADY,
		// Master Interface Write Data Channel ports. Write data (issued by master)
		output wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_WDATA,
		// Write strobes. 
    // This signal indicates which byte lanes hold valid data.
    // There is one write strobe bit for each eight bits of the write data bus.
		output wire [C_M_AXI_DATA_WIDTH/8-1 : 0] M_AXI_WSTRB,
		// Write valid. This signal indicates that valid write data and strobes are available.
		output wire  M_AXI_WVALID,
		// Write ready. This signal indicates that the slave can accept the write data.
		input wire  M_AXI_WREADY,
		// Master Interface Write Response Channel ports. 
    // This signal indicates the status of the write transaction.
		input wire [1 : 0] M_AXI_BRESP,
		// Write response valid. 
    // This signal indicates that the channel is signaling a valid write response
		input wire  M_AXI_BVALID,
		// Response ready. This signal indicates that the master can accept a write response.
		output wire  M_AXI_BREADY,
		// Master Interface Read Address Channel ports. Read address (issued by master)
        output wire [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR,
        //tection type. 
    // This signal indicates the privilege and security level of the transaction, 
    // and whether the transaction is a data access or an instruction access.
        output wire [2 : 0] M_AXI_ARPROT,
        //d address valid. 
    // This signal indicates that the channel is signaling valid read address and control information.
        output wire  M_AXI_ARVALID,
        //d address ready. 
    // This signal indicates that the slave is ready to accept an address and associated control signals.
        input wire  M_AXI_ARREADY,
        //ter Interface Read Data Channel ports. Read data (issued by slave)
        input wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA,
        //d response. This signal indicates the status of the read transfer.
        input wire [1 : 0] M_AXI_RRESP,
        //d valid. This signal indicates that the channel is signaling the required read data.
        input wire  M_AXI_RVALID,
        //d ready. This signal indicates that the master can accept the read data and response information.
         output wire  M_AXI_RREADY

	);

	// function called clogb2 that returns an integer which has the
	// value of the ceiling of the log base 2

	 function integer clogb2 (input integer bit_depth);
		 begin
		 for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
			 bit_depth = bit_depth >> 1;
		 end
	 endfunction

	// TRANS_NUM_BITS is the width of the index counter for 
	// number of write or read transaction.
	 localparam integer TRANS_NUM_BITS = clogb2(C_M_TRANSACTIONS_NUM-1);

	// Example State machine to initialize counter, initialize write transactions, 
	// initialize read transactions and comparison of read data with the 
	// written data words.
	parameter [1:0] IDLE = 2'b00, INIT_WRITE   = 2'b01; // This state initializes write transaction,

	reg [1:0] mst_exec_state;

	// AXI4LITE signals
	//write address valid
	reg  	axi_awvalid;
	//write data valid
	reg  	axi_wvalid;

	//write response acceptance
	reg  	axi_bready;
	//write address
	reg [C_M_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	//write data
	reg [C_M_AXI_DATA_WIDTH-1 : 0] 	axi_wdata;

	reg [TRANS_NUM_BITS : 0] 	write_index;
	//index counter to track the number of read transaction issued
	//reg [TRANS_NUM_BITS : 0] 	read_index;
	//Expected read data used to compare with the read data.
	reg [C_M_AXI_DATA_WIDTH-1 : 0] 	expected_rdata;

	//Flag is asserted when the write index reaches the last write transction number
	reg  	last_write;
	//Flag is asserted when the read index reaches the last read transction number
	//reg  	last_read;
	
	
	reg [31:0] dma_reg0; // надо чтобы делать то сброс то инит
	reg [18:0]curaddrbram; //указатель на текущий адресс
	reg valid2str;
	
	reg  	init_txn_ff;
    reg     init_txn_ff2;

    wire  	init_txn_pulse;

	// I/O Connections assignments
	//Adding the offset address to the base addr of the slave
	assign M_AXI_AWADDR	= 32'h41e00030 + axi_awaddr;
	//AXI 4 write data
	////assign M_AXI_WDATA	= axi_wdata;
	assign M_AXI_WDATA = axi_wdata;
	assign M_AXI_AWPROT	= 3'b000;
	assign M_AXI_AWVALID	= axi_awvalid;
	//Write Data(W)
	assign M_AXI_WVALID	= axi_wvalid;
	//Set all byte strobes in this example
	assign M_AXI_WSTRB	= 4'b1111;
	//Write Response (B)
	assign M_AXI_BREADY	= axi_bready;

    assign M_VALID2STR = valid2str;
    
    
    assign init_txn_pulse	= (!init_txn_ff2) && init_txn_ff;
    
    
    
	//--------------------
	//Write Address Channel
	//--------------------

	  always @(posedge M_AXI_ACLK)										      
	  begin                                                                        
	    //Only VALID signals must be deasserted during reset per AXI spec          
	    //Consider inverting then registering active-low reset for higher fmax     
	    if (M_AXI_ARESETN == 0)                                                                                                                    
	        curaddrbram <= 0;                                                                                                            
	      //Signal a new address/data command is available by user logic           
	    else if (M_IRQ_END_STR)
	       begin                                                                      
	       if ((curaddrbram + M_LEN_REF) >= 32'h80000)
	       curaddrbram <= 0;
	       else if ((curaddrbram + M_LEN_REF) >= 32'h40000)
	       curaddrbram <= 32'h40000;                                                                                                   
	       else                                                                
	            curaddrbram <= curaddrbram + M_LEN_REF;                                               	        
	       end
	     end                                             




	  always @(posedge M_AXI_ACLK)										      
	  begin                                                                        
	    //Only VALID signals must be deasserted during reset per AXI spec          
	    //Consider inverting then registering active-low reset for higher fmax     
	    if (M_AXI_ARESETN == 0)                                                                                                                
	        axi_awvalid <= 1'b0;                                                                                                                          
	    else if (mst_exec_state == INIT_WRITE)                                                    
	        axi_awvalid <= 1'b1;
	    else if (M_AXI_AWREADY && axi_awvalid)
	       axi_awvalid <= 1'b0;                                                                                                      
	    end                                                                          


	//--------------------
	//Write Data Channel
	//--------------------

	//The write data channel is for transfering the actual data.
	//The data generation is speific to the example design, and 
	//so only the WVALID/WREADY handshake is shown here

	   always @(posedge M_AXI_ACLK)                                        
	   begin                                                                         
	     if (M_AXI_ARESETN == 0)                                                                                                      
	         axi_wvalid <= 1'b0;                                                                                                   
	      else if (mst_exec_state == INIT_WRITE)                                                              
	         axi_wvalid <= 1'b1;
	      else if (M_AXI_WREADY && axi_wvalid)
	         axi_wvalid <= 1'b0;                                                    
	      end                                                                           

/*
	  always @ posedge M_AXI_ACLK)                                                    
	  begin                                                                             
	    if (M_AXI_ARESETN == 1'b0)                                                     
	      begin
	        valid2str <= 1'b0;                                                                    
	        mst_exec_state  <= INIT_WRITE;                                                                                   
	      end                                                                           
	    else                                                                            
	      begin                                                                         
	       // state transition                                                          
	        case (mst_exec_state)                                                       
	                                                                                    
	          IDLE:                                                             
	          // This state is responsible to initiate 
	          // AXI transaction when init_txn_pulse is asserted 
	            if (M_IRQ_END_STR == 1'b1) // Доп. проверка                                     
	              begin
	               valid2str <= 1'b0;                                                                 
	                mst_exec_state  <= INIT_WRITE;                                      
	              end                                                                   
	            else                                                                    
	              begin
	              
	                valid2str <= 1'b1;                                                               
	                mst_exec_state  <= IDLE;                                    
	              end                                                                   
	                                                                                    
	          INIT_WRITE:                                                               
	            // This state is responsible to issue start_single_write pulse to       
	            // initiate a write transaction. Write transactions will be             
	            // issued until last_write signal is asserted.                          
	            // write controller                                                     
	            if (last_write)                                                        
	              begin                                                                 
	                mst_exec_state <= IDLE;                                      
	              end                                                                   
	            else                                                                    
	              begin
	                valid2str <= 1'b0;                                                                
	                mst_exec_state  <= INIT_WRITE;                                  	                                                                                                                                             
	              end                     
            endcase
        end
        end
*/        

    always @(posedge M_AXI_ACLK)                                                    
	  begin                                                                             
	    if (M_AXI_ARESETN == 1'b0)                                                     
	      begin                                                                 
	        mst_exec_state  <= IDLE;                                                                                   
	      end                                                                           
	    else
	       begin
	           case(mst_exec_state)                                                                                                                                                                                                                    
	          INIT_WRITE:                                                                                                                 
	            if (last_write)                                                        
	              begin                                                                 
	                mst_exec_state <= IDLE;                                      
	              end                                                                                               	                                                                                                                                                                  
                IDLE:
                if (M_START_CAPTURES == 1'b1)
                    begin
                    mst_exec_state <= wRITE
                    end
            
            
            endcase
            end
        end
        


	//----------------------------
	//Write Response (B) Channel
	//----------------------------
	  always @(posedge M_AXI_ACLK)                                    
	  begin                                                                
	    if (M_AXI_ARESETN == 0)                                                                                                     
	        axi_bready <= 1'b0;                                                                                                     
	    else if (mst_exec_state == INIT_WRITE)
	        axi_bready <= 1'b1;
	     else if (axi_bready)
            axi_bready <= 1'b0;                                        
	  end                                                                  

	  //Write Addresses                                        
	  always @(posedge M_AXI_ACLK)                                  
	      begin                                                     
	       if (M_AXI_ARESETN == 0)                       
	          begin                                                 
	            axi_awaddr <= 32'h0;
	            write_index <= 32'h0; 
	            ////dma_reg0 <= 32'h0;                                
	          end                                                                           
	        else if (M_AXI_AWREADY && axi_awvalid && M_START_CAPTURES == 1'b1)                
	          if (axi_awaddr <= 32'h28)                                               
               begin
                ////dma_reg0 <= 32'h4; 
                write_index <= write_index + 1; 
	            axi_awaddr <= axi_awaddr + 32'h00000004;             	                                                              
	           end
	         else
	           begin     
	           ////dma_reg0 <= 32'h1001;
	           axi_awaddr <= 32'h0;
	           end
	      end    
                              
      always @(posedge M_AXI_ACLK)                                  
           begin                                                     
              if (M_AXI_ARESETN == 0)                                 
                    begin                                                
                      axi_wdata <= 32'h0;                  
                    end                                                                             
                  else if (M_AXI_WREADY && axi_wvalid && M_START_CAPTURES == 1'b1)               
                    begin
                    /*
                      case (axi_awaddr)                                            
                      32'h0:axi_wdata <= dma_reg0;// сброс только один раз
                      32'h18:axi_wdata <= 32'h40000000 + curaddrbram;
                      32'h28:axi_wdata <= (M_LEN_REF+5);
                      endcase
                    */
                    case (write_index)
                       32'h0:axi_wdata <= 32'h4; // Сброс dma
                       //32'h6:axi_wdata <= 32'h40000000 + curaddrbram;
                       //32'hA:axi_wdata <=  (M_LEN_REF+5);
                        
                       32'hB:axi_wdata <= 32'h1001; //0 reg
                       32'h11:axi_wdata <= 32'h40000000 + curaddrbram;
                       32'h16:axi_wdata <= (M_LEN_REF+5);
                   
                       32'h17:axi_wdata <= 32'h1001; //0 reg
                     endcase
                    end                                                                                           
                  end                                                     
	  //Terminal write count                                                            
	  
                                                                                 
	  always @(posedge M_AXI_ACLK)                                                      
	  begin                                                                             
	    if (M_AXI_ARESETN == 0)                                                         
	     ////if (M_AXI_ARESETN == 0)  
	      last_write <= 1'b0;                                                           	                                                                                    
	    //The last write should be associated with a write address ready response       
	    else if ((write_index == C_M_TRANSACTIONS_NUM) && M_AXI_AWREADY)                
	      last_write <= 1'b1;                                                                                           
	  end                                                                               
                                                                                                                                                   
	                                                                                    
                                                                              

	endmodule

