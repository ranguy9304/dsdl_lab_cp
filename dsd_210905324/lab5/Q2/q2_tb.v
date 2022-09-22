`timescale 1ns/1ns
`include "q2.v"
module q2_tb();
parameter N = 4;
wire [N-1:0] b;
reg [N-1:0] g;
q2 q2(g,b);
initial 
begin
  $dumpfile("q2_tb.vcd");
  $dumpvars(0, q2_tb);
  g=4'b0011;
  #20;
  g=4'b0001;
  #20;
  $display("test complete");
  end
endmodule
