`timescale 1ns/1ns
`include "halfadd.v"
//Name of the Verilog file
module halfadd_tb();
reg x,y;
//Input
wire s,c;
//Output
halfadd ex2(x,y,s,c); //Instantiation of the module
initial
begin
$dumpfile("halfadd.vcd");
$dumpvars(0, halfadd_tb);
x=0;y=0;#20
x=0;y=1;#20
x=1;y=0;#20
x=1;y=1;#20

$display("Test complete");
end
endmodule
