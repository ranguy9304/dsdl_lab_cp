`timescale 1ns/1ns
`include "caller.v"
module testbench();
reg [3:0]in;
wire out;
integer i;
exe e0(in,out);
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
