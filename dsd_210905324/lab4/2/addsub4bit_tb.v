`timescale 1ns/1ns
`include "addsub4bit.v"
//Name of the Verilog file
module addsub4bit_tb();
reg [3:0]x;
reg [3:0]y;
reg Cin;
//Input
wire [3:0]s;
wire Cout;
//Output
addsub4bit ex2(Cin,x,y,s,Cout); //Instantiation of the module
initial
begin
$dumpfile("addsub4bit.vcd");
$dumpvars(0, addsub4bit_tb);
x=4'b0000; y=4'b0000; Cin=1'b0;#20
x=4'b0100; y=4'b0011; Cin=1'b1;#20
x=4'b0011; y=4'b0101; Cin=1'b0;#20
x=4'b1000; y=4'b0100; Cin=1'b0;#20
x=4'b0101; y=4'b0101; Cin=1'b1;#20 



$display("Test complete");
end
endmodule
