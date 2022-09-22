//test bench for converting decimal to bcd 

`timescale 1ns/1ps
`include "conv.v"
module testbench;
reg [3:0] A;
wire [3:0] B;
reg clk;
reg rst;
conv conv(A,B);
always #5 clk=~clk;
initial begin
rst=1;
#10 rst=0;
#10 A=4;
#10 A=5;
#10 A=6;
#10 A=7;



end
endmodule

