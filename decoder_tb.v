module decoder_tb;

reg [1:0] data_in;
reg enb;
wire [3:0] data_out;

decoder_rtl INTER_CONE(data_in,enb,data_out);

initial
begin
 enb=1'b0;
 data_in=2'b00;
 #10;
 enb=1'b1;
 data_in=2'b10;
end

initial
$monitor($time,"\n ENB=%0b| DATA_IN=%0b | DATA_OUT=%0b",enb,data_in,data_out);

endmodule