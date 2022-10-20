module f_to_one_mux(w,s,f);
input [0:3]w;
input [1:0]s;
output f;
assign f=s[1]?s[0]?w[3]:w[2]:s[0]?w[1]:w[0];
endmodule


module caller(a,b,c,d,f);
input a,b,c,d;
output [3:0]f;

f_to_one_mux m0({1'b0,1'b1,1'b1,1'b0},{a,b},f[0]);
f_to_one_mux m1({c,~c,c,~c},{a,b},f[1]);
f_to_one_mux m2({1'b0,1'b1,1'b1,1'b0},{c,d},f[2]);
f_to_one_mux m3({1'b0,1'b1,1'b0,1'b1},{c,d},f[3]);
endmodule