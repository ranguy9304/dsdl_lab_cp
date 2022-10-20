module caller(a,b,c,d,f);
input a,b,c,d;
output f;
f_to_one_mux m0({1'b0,1'b0,d,c|(~d)},{a,b},f);
endmodule
module f_to_one_mux(w,s,f);
input [3:0]w;
input [1:0]s;
output f;
assign f=s[1]?s[0]?w[3]:w[2]:s[0]?w[1]:w[0];
endmodule