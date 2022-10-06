`timescale 1ns/1ns
`include "qb.v"

module qb_tb();
reg [15:0] a;
reg [3:0] s;
wire f;

sixtoone s1(a,s,f);
initial
begin
	$dumpfile("qb_tb.vcd");
	$dumpvars(0,qb_tb);
	
	a = 16'hAAAA;
	s = 4'd0; #20;
	s = 4'd1; #20;
	s = 4'd2; #20;
	s = 4'd3; #20;
	s = 4'd4; #20;
	s = 4'd5; #20;
	s = 4'd6; #20;
	s = 4'd7; #20;
	s = 4'd8; #20;
	s = 4'd9; #20;
	s = 4'd10; #20;
	s = 4'd11; #20;
	s = 4'd12; #20;
	s = 4'd13; #20;
	s = 4'd14; #20;
	s = 4'd15; #20;
	
	$display("Test Complete");
end 
endmodule