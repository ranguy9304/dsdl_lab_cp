`timescale 1ns/1ns
`include "q2.v"
module q2_tb();
reg [15:0]w;
reg [3:0]s;
wire f;

q2 q2(f,w,s);
initial
begin
$dumpfile("q2_tb.vcd");
$dumpvars(0,q2_tb);

w=16'b1010101010101010;
s=4'b0000;#20;
s=4'b0001;#20;
s=4'b0010;#20;
s=4'b0011;#20;
s=4'b0100;#20;
s=4'b0101;#20;
s=4'b0110;#20;
s=4'b0111;#20;
s=4'b1000;#20;
s=4'b1001;#20;
s=4'b1010;#20;
s=4'b1011;#20;
s=4'b1100;#20;
s=4'b1101;#20;
s=4'b1110;#20;
s=4'b1111;#20;


$display("test Complete");
end
endmodule