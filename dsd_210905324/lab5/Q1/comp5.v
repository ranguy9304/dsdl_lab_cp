module comp5(a,b,e,g,l);
input [4:0] a,b;
output e,g,l;
wire [4:0]i;
assign i = ~(a^b);
assign e = i[4] & i[3] & i[2] & i[0];
assign g = a[4]&(~b[4])|i[4]&a[3]&(~b[3])|i[3]&a[2]&(~b[2])|i[2]&a[1]&(~b[1])|i[1]&a[0]&(~b[0]);
assign l = ~( e | g);
endmodule
