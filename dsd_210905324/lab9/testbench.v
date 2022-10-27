`timescale 1ns/1ns
`include "three_to_eight.v"
module testbench();
reg [2:0]in;
wire [7:0]out;
integer i;
three_to_eight e0(in,out);
initial
begin
$dumpfile("testbench.vcd");
$dumpvars(0,testbench);
for(i=0;i<8;i=i+1)
begin
in=i;
#20;
end

$display("done");
end
endmodule
