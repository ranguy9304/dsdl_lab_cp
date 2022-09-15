module lab2_2(a, b, c,d, m);
input a, b,c,d;
output m;

assign m =(d|(~b))&(c|b);

endmodule
