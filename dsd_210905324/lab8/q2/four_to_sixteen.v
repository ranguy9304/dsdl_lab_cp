`include "three_to_eight.v"
module caller(in,out);
input [3:0]in;
output [15:0]out;
decoder3_to_8 d0(in[2:0],out[7:0],~in[3]);
decoder3_to_8 d1(in[2:0],out[15:8],in[3]);
endmodule
