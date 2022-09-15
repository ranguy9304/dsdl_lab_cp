module lab2_2(a, b, c,d, f);
input a, b,c,d;
output f;
assign g =~(~(a|c|~d)|~(b|c)|~(b|d));

assign f =~(g|g);

endmodule
