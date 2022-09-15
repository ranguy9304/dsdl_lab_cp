`timescale 1ns/1ns
`include "lab2_1.v"
//Name of the Verilog file
module lab2_1_tb();
reg a,b,c,d;
//Input
wire m;
//Output
lab2_1 ex2(a,b,c,d,m); //Instantiation of the module
initial
begin
$dumpfile("lab2_1.vcd");
$dumpvars(0, lab2_1_tb);
a=1'b0; b=1'b0; c=1'b0;d=1'b0;
#20;

a=1'b0; b=1'b0; c=1'b0;d=1'b1;
#20;
a=1'b0; b=1'b0; c=1'b1;d=1'b0;
#20;
a=1'b0; b=1'b0; c=1'b1;d=1'b1;
#20;
a=1'b0; b=1'b1; c=1'b0;d=1'b0;
#20;
a=1'b0; b=1'b1; c=1'b0;d=1'b1;
#20;
a=1'b0; b=1'b1; c=1'b1;d=1'b0;
#20;
a=1'b0; b=1'b1; c=1'b1;d=1'b1;
#20;
a=1'b1; b=1'b0; c=1'b0;d=1'b0;
#20;
a=1'b1; b=1'b0; c=1'b0;d=1'b1;
#20;
a=1'b1; b=1'b0; c=1'b1;d=1'b0;
#20;
a=1'b1; b=1'b0; c=1'b1;d=1'b1;
#20;
a=1'b1; b=1'b1; c=1'b0;d=1'b0;
#20;
a=1'b1; b=1'b1; c=1'b0;d=1'b1;
#20;
a=1'b1; b=1'b1; c=1'b1;d=1'b0;
#20;
a=1'b1; b=1'b1; c=1'b1;d=1'b1;
#20;

$display("Test complete");
end
endmodule
