`include "four_to_sixteen.v"
module exe(in ,out);
input [3:0]in;
output out;
reg out;
wire [15:0]phase;
caller c0(in,phase);
always@(*)
begin
out = phase[1] | phase[3] | phase[6] | phase[7] | phase[9] | phase[14] | phase[15] ;
end
endmodule