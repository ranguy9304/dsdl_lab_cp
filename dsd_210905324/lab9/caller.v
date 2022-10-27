module q3(w,y,en);
input en;
input [3:0]w;
output [15:0]y;
wire [3:0]x;
dec2_to_4 d0(w[3:2],x[3:0],en);
dec2_to_4 d1(w[1:0],y[3:0],~x[0]);
dec2_to_4 d2(w[1:0],y[7:4],~x[1]);
dec2_to_4 d3(w[1:0],y[11:8],~x[2]);
dec2_to_4 d4(w[1:0],y[15:12],~x[3]);

endmodule

module dec2_to_4(w,y,en);
input [1:0]w;
input en;
output reg [3:0]y;
always@(w or en)
    case({en,w})
    3'b100:y=4'b0111;
    3'b101:y=4'b1011;
    3'b110:y=4'b1101;
    3'b111:y=4'b1110;
    default:y=4'b1111;
    endcase
endmodule

module caller(w,en,y,a,b,c);
input en;
input [3:0]w;
output [15:0]y;
output a,b,c;
wire a,b,c;
q3 ex0(w,y,en);
assign a = (~y[5]) | (~y[4]) |(~y[12])|(~y[8])|(~y[9])|(~y[1]) ;
assign b = (~y[5]) | (~y[1])|(~y[13])|(~y[12]);
assign c = (~y[15]) | (~y[14]) | (~y[1])|(~y[0])|(~y[12])|(~y[8]);
endmodule