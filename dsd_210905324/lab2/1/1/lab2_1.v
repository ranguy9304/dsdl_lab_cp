module lab2_1(a, b, c,d, m);
input a, b,c,d;
output m;

assign m =(c&d) | (b&(~c)&(~d)) | ((~a)&b) | (c&(~b));

endmodule
