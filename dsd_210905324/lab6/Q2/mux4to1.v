module mux4to1(out, i0,i1,i2,i3, s0, s1);
     input i0, i1, i2, i3;
     input s0, s1;
     output out;
assign out = s1? (s0?i3:i2) : (s0?i1:i0);
endmodule

module q2(out,in,s);
input [15:0]in;
input [3:0]s;
output out;
wire [3:0]x;
mux4to1 case0(x[0],in[0],in[1],in[2],in[3],s[0],s[1]);
mux4to1 case1(x[1],in[4],in[5],in[6],in[7],s[0],s[1]);
mux4to1 case2(x[2],in[8],in[9],in[10],in[11],s[0],s[1]);
mux4to1 case3(x[3],in[12],in[13],in[14],in[15],s[0],s[1]);
mux4to1 case4(out,x[0],x[1],x[2],x[3],s[2],s[3]);
endmodule