`include "ttof.v"
module three_to_eight(in,out);
input [2:0]in;
output [7:0]out;
dec2_4 d0(in[0],in[1],~in[3],1'd0,out[3:0]);
dec2_4 d1(in[0],in[1],in[3],1'd0,out[7:4]);
endmodule