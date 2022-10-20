`timescale 1ns/1ns
`include "dec2_to_4.v"
module testbench();
reg a,b;
wire [3:0]out;
integer i;
dec2_4 e0(a,b,1'b1,1'b0,out);
initial
begin
$dumpfile("testbench.vcd");
$dumpvars(0,testbench);
for(i=0;i<4;i=i+1)
begin
a=(i>>1)&1;
b=i&1;
#20;
end

$display("done");
end
endmodule
