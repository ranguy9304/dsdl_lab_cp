`timescale 1ns/1ns
`include "multiplier2bit.v"
//Name of the Verilog file
module multiplier2bit_tb();
reg [1:0]a;
reg [1:0]b;
reg Cin;
//Input
wire [3:0]p;
wire Cout;
//Output
multiplier2bit ex2(a,b,p,Cin,Cout); //Instantiation of the module
initial
begin
$dumpfile("multiplier2bit.vcd");
$dumpvars(0, multiplier2bit_tb);
a=2'b00; b=2'b00; Cin=1'b0;#20
a=2'b00; b=2'b10; Cin=1'b1;#20
a=2'b01; b=2'b10; Cin=1'b0;#20
a=2'b10; b=2'b00; Cin=1'b0;#20
a=2'b01; b=2'b10; Cin=1'b1;#20 



$display("Test complete");
end
endmodule
