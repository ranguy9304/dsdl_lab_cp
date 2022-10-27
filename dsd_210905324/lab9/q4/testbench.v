`timescale 1ns/1ns
`include "caller.v"
module testbench();
reg [2:0]sel;
reg [7:0]in;
wire out;
integer i,j;
caller e0(sel,in,out);
initial
begin
$dumpfile("testbench.vcd");
$dumpvars(0,testbench);
for(i=0;i<256;i=i+1)
begin
for(j=0;j<8;j=j+1)
begin
in=i;
sel=j;
$display("ehh");
#20;
end
end

$display("done");
end
endmodule
