`timescale 1ns/1ns
`include "q3.v"
module testbench();
reg a,b,c,d;
wire [3:0]f;
integer i;
caller q1(a,b,c,d,f);
initial
begin
    $dumpfile("testbench.vcd");
    $dumpvars(0,testbench);
    for(i=0;i<16;i=i+1)
    begin
    a=i&1;
    b=(i>>1)&1;
    c=(i>>2)&1;
    d=(i>>3)&1;
    #20;
    end

    $display("test complete");
end
endmodule    