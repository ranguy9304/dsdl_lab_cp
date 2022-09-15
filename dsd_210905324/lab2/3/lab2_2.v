module lab2_2(a, b, c,d, m);
input a, b,c,d;
output m;

assign m =((a&b&d)|(c&d&b)|(c&d&a)|(a&b&c));

endmodule
