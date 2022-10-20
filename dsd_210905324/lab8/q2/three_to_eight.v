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