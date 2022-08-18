`timescale 1ns/1ns
`include "lab1.v"
//Name of the Verilog file
module example2_tb();
reg a,b,c,d;
//Input
wire m;
//Output
example2 ex2(a,b,c,d,m); //Instantiation of the module
initial
begin
$dumpfile("example2_tb.vcd");
$dumpvars(0, example2_tb);
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
