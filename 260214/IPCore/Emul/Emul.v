module ADC_emul(input clk,input reset,output lvds,output clk_out);
parameter WIDTH=4;//������ LVDS ������
parameter accPP=1;//����������
wire clk;
wire reset;
reg [WIDTH-1:0]acc;//������� ����������
reg redirect_flag;//���� ��������������� ����� ������
reg sinc_flag;//���� ������ ������
reg [WIDTH-1:0]lvds_n;
reg [WIDTH-1:0]lvds_p;
wire [2*WIDTH-1:0]lvds;//�������� ����
wire clk_out;//�������� ��

/******���������_������**********/
always @ (posedge clk or negedge reset)
	begin
	  if (!reset)
	    begin
	      acc<=0;
	      redirect_flag<=1;
	    end
	 case (acc)
	   4'b0001:redirect_flag<=1;
	   4'b1110:redirect_flag<=0;
	   endcase
	 case (redirect_flag)
	   0:acc<=acc-accPP;
		 1:acc<=acc+accPP;
		 endcase
	end
	
/***���������_���������_��������***/
always @ (posedge clk or negedge reset)
  begin
    if (!reset)
      sinc_flag<=0;
    else sinc_flag<=sinc_flag+1;
  end
  
/******����������_LVDS_������****/
always @ (posedge sinc_flag or negedge sinc_flag or negedge reset)
  begin
    if(!reset)
      begin
        lvds_n<=0;
        lvds_p<=0;
      end
    if (sinc_flag)
      lvds_p<=acc;
    else lvds_n<=acc;
  end

assign lvds=lvds_p+(lvds_n<<WIDTH);
assign clk_out=sinc_flag;
endmodule