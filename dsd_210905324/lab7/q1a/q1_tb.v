`timescale 1ns/1ns
`include "q1.v"
module q1_tb();
reg [3:0] sel;
wire out;

eto1 q1(sel,out);
initial
begin
    $dumpfile("q1_tb.vcd");
    $dumpvars(0,q1_tb);
    sel=4'b0001;#20;
    sel=4'b0010;#20;
    sel=4'b0011;#20;
    sel=4'b0100;#20;
    sel=4'b1100;#20;
    sel=4'b1110;#20;
    sel=4'b1111;#20;
    sel=4'b0111;#20;
    sel=4'b0101;#20;
    sel=4'b1101;#20;

    $display("test complete");
end
endmodule    
