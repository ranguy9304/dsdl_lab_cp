module decoder3_to_8( in,out, en);
input [2:0]  in;
input en;
output [7:0] out;
  reg [7:0] out;
integer i;

 always @( in or en)
	begin

      if (en) 
        begin
        out=8'b0;
          for(i=0;i<8;i=i+1)
          begin
            if(in==i)
            begin
            out[i]=1'b1;
            end
          end
      end
else 
out=8'd0;
end
endmodule
module caller(sel,in,out);
input [2:0]sel;
input [7:0]in;
output out;
reg temp3;
reg [7:0]temp,temp1;
decoder3_to_8 d0(sel,temp,1'b1);
integer i;
always@(*)
begin
for(i=0;i<8;i=i+1)
  begin
  temp1[i]=temp[i]&in[i];
  end
assign temp3=temp1[0];
for(i=0;i<8;i=i+1)
  begin
  temp3=temp3|temp1[i];
  end
end
assign out=temp3;
endmodule


