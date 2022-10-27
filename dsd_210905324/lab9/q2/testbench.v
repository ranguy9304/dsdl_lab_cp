`timescale 1ns/1ns
`include "caller.v"
module testbench();
reg [3:0]in;
wire a,b,c;
wire [15:0]out;

integer i;
caller e0(in,1'b1,out,a,b,c);
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
