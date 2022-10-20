module e_to_o_mux(w,s,f);
input [0:7]w;
input [2:0]s;
output reg f;
always @(*)
begin
case(s)
0:f=w[0];
1:f=w[1];
2:f=w[2];
3:f=w[3];
4:f=w[4];
5:f=w[5];
6:f=w[6];
7:f=w[7];
endcase

end
endmodule
module caller(a,b,c,d,f);
input a,b,c,d;
output [3:0]f;
e_to_o_mux e0({1'b0,1'b0,d,1'b1,1'b1,1'b1,1'b1,1'b1},{a,b,c},f[3]);
e_to_o_mux e1({1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0},{b,c,d},f[2]);
e_to_o_mux e2({(~d),d,(~d),d,(~d),d,(~d),d},{a,b,c},f[1]);
e_to_o_mux e3({(~d),(~d),(~d),(~d),(~d),(~d),(~d),(~d)},{a,b,c},f[0]);



endmodule