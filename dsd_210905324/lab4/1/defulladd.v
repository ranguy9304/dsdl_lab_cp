`include "halfadd.v"
module defulladd(x,y,Cin,s,Cout);
input x,y,Cin;
output s,Cout;
halfadd stage0(x,y,s0,c0);
halfadd stage1(s0,Cin,s,c1);
assign Cout = (c0|c1);
endmodule
