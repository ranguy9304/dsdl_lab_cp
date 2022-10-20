module dec2_4 (a,b,en,ac,out);
input a, b,en,ac;
output reg [3:0]out;
wire [3:0]temp;
assign temp[0]= (~a) & (~b) & en;
assign temp[1]= (~a) & b & en;
assign temp[2]= a & (~ b) & en;
assign temp[3]= a & b & en;
integer i;
always @(*)
begin
// out=~temp;
    if(ac==1)
    out=~temp;
    // begin
        // for(i=0;i<4;i=i+1)
        // begin
        // out[i]=temp[i];
        // end
    // end
// 
    else
    out=temp;
// 
    // begin
        // for(i=0;i<4;i=i+1)
        // begin
        // out[i]=~temp[i];
        // end
    // end
    // 
end
endmodule