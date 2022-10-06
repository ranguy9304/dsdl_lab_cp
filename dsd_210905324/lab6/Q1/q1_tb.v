`timescale 1ns/1ns
`include "q1.v"

module q1_tb();
reg s0,s1,w0,w1,w2,w3;
wire f;

q1 cct(s0,s1,w0,w1,w2,w3,f);
initial
begin
      $dumpfile("q1_tb.vcd");
      $dumpvars(0,q1_tb);
      s0=1'b1; s1=1'b0; w0=1'b0; w1=1'b0; w2=1'b0; w3=1'b0; #20
      s0=1'b1; s1=1'b0; w0=1'b0; w1=1'b0; w2=1'b0; w3=1'b1; #20
      s0=1'b1; s1=1'b0; w0=1'b0; w1=1'b0; w2=1'b1; w3=1'b0; #20
      s0=1'b1; s1=1'b0; w0=1'b0; w1=1'b0; w2=1'b1; w3=1'b1; #20
      s0=1'b1; s1=1'b0; w0=1'b0; w1=1'b1; w2=1'b0; w3=1'b0; #20
      s0=1'b1; s1=1'b0; w0=1'b0; w1=1'b1; w2=1'b0; w3=1'b1; #20
      s0=1'b1; s1=1'b0; w0=1'b0; w1=1'b1; w2=1'b1; w3=1'b0; #20
      s0=1'b1; s1=1'b0; w0=1'b0; w1=1'b1; w2=1'b1; w3=1'b1; #20
      s0=1'b1; s1=1'b0; w0=1'b1; w1=1'b0; w2=1'b0; w3=1'b0; #20
      s0=1'b1; s1=1'b0; w0=1'b1; w1=1'b0; w2=1'b0; w3=1'b1; #20
      s0=1'b1; s1=1'b0; w0=1'b1; w1=1'b0; w2=1'b1; w3=1'b0; #20
      s0=1'b1; s1=1'b0; w0=1'b1; w1=1'b0; w2=1'b1; w3=1'b1; #20
      s0=1'b1; s1=1'b0; w0=1'b1; w1=1'b1; w2=1'b0; w3=1'b0; #20
      s0=1'b1; s1=1'b0; w0=1'b1; w1=1'b1; w2=1'b0; w3=1'b1; #20
      s0=1'b1; s1=1'b0; w0=1'b1; w1=1'b1; w2=1'b1; w3=1'b0; #20
      s0=1'b1; s1=1'b0; w0=1'b1; w1=1'b1; w2=1'b1; w3=1'b1; #20

      $display("Test Complete");
end
endmodule      