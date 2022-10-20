`timescale 1ns/1ns
`include "four_to_sixteen.v"
module testbench();
reg [3:0]in;
wire [15:0]out;
integer i;
caller e0(in,out);
initial
begin
$dumpfile("testbench.vcd");
$dumpvars(0,testbench);
for(i=0;i<16;i=i+1)
begin
in=i;
#20;
end

$display("done");
end
endmodule
