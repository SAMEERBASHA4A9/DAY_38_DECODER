module decoder_rtl(input [1:0] data_in,input enb,output reg [3:0] data_out);

always@(*)
begin
 if(!enb)
  data_out=4'd0;
 else
  begin
    case(data_in)
	 2'b00:data_out=4'b0001;
	 2'b01:data_out=4'b0010;
	 2'b10:data_out=4'b0100;
	 2'b11:data_out=4'b1000;
	endcase
   end
end

endmodule
   
