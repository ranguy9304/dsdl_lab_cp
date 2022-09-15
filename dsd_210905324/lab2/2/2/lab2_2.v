module lab2_2(a, b, c,d, m);
input a, b,c,d;
output m;

assign m =(d|(~c)|a)&((~c)|(b)|(~a))&((~a)|(b)|(~d))&((~a)|(c)|(~b));

endmodule
