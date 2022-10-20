`timescale 1ns/1ns
`include "q1b.v"
module q1b_tb();
reg a,b,c,d;
wire f;
integer i;
caller q1(a,b,c,d,f);
initial
begin
    $dumpfile("q1b_tb.vcd");
    $dumpvars(0,q1b_tb);
    for(i=0;i<16;i=i+1)
    begin
    a=(i>>3)&1;
    b=(i>>2)&1;
    c=(i>>1)&1;
    d=i&1;
    #20;
    end

    $display("test complete");
end
endmodule    
