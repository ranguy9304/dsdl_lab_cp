//testbench for mux16to1ex3
`timescale 1ns/1ps
`include "mux16to1ex3.v"
module mux16to1ex3_tb();
reg [15:0] w;
reg [3:0] s;
wire f;
mux16to1ex3 cct(w,s,f);
initial
begin
      $dumpfile("mux16to1ex3_tb.vcd");
      $dumpvars(0,mux16to1ex3_tb);
      for(w=0;w<16;w=w+1)
      begin
            for(s=0;s<2;s=s+1)
            begin
                  #20
            end
      end
      $display("Test Complete");
end
endmodule

