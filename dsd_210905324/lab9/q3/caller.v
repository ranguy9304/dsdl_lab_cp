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

module exe(in,out,en);
input [2:0]in;
input en;
output out;
output [3:0]temp1,temp2,temp3;
dec2_to_4 d0(in[1:0],temp1,(~in[2]&en));
dec2_to_4 d1(in[1:0],temp2,(in[2]&en));
assign out= ~temp1[0] | ~temp2[2] | ~temp2[1] | ~temp2[0];
endmodule
