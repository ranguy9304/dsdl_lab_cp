module lab2_2(a,b,c,d,e,f);
input a, b,c,d,e;
output f;
assign g= e&(~a|b);
assign f =(g&((c&d)|(~c&~d)))|(~c&d&~g);

endmodule
