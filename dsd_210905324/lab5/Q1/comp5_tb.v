`timescale 1ns/1ns 
`include "comp5.v"

module comp5_tb;
reg [4:0]a,b;
wire e,g,l;

comp5 uut (a,b,e,g,l);
initial begin
             $dumpfile("comp5_tb.vcd");
             $dumpvars(0,comp5_tb);
             
             a=4;b=5;
             #10;
             
             a=10;b=3;
             #10;
             
             a=6;b=7;
             #10;
             
             a=7;b=8;
             #10;
             
             $display("Test Complete");
end
endmodule

