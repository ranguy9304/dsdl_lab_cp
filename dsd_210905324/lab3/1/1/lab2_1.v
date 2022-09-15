module lab2_1(a, b, c,d, m);
input a, b,c,d;
output m;
assign m =(~(a&(~b)))&(~(c&(~d)));
endmodule
