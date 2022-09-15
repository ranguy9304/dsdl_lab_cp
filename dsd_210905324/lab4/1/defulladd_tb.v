`timescale 1ns/1ns
`include "defulladd.v"
//Name of the Verilog file
module defulladd_tb();
reg x,y,Cin;
//Input
wire s,Cout;
//Output
defulladd ex2(x,y,Cin,s,Cout); //Instantiation of the module
initial
begin
$dumpfile("defulladd.vcd");
$dumpvars(0, defulladd_tb);
x=0;y=0;Cin=0;#20
x=0;y=0;Cin=1;#20
x=0;y=1;Cin=0;#20
x=0;y=1;Cin=1;#20
x=1;y=0;Cin=0;#20
x=1;y=0;Cin=1;#20
x=1;y=1;Cin=0;#20
x=1;y=1;Cin=1;#20


$display("Test complete");
end
endmodule
