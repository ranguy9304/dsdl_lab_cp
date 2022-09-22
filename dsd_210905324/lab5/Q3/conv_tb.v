`timescale 1ns/1ns
`include "conv.v"

module conv_tb;
reg [3:0]A;
wire [3:0]B;


conv conv(A,B);
initial begin

    $dumpfile("conv_tb.vcd");
    $dumpvars(0,conv_tb);


    A=4'b1001;#20;

    A=4'b0001;#20;

    $display("Test Complete");

end
endmodule
