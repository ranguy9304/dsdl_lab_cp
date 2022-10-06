module sixtoone(a,s,f);
	input [15:0] a;
	input [3:0] s;
	output f;
	wire [1:0] c;
	eighttoone stage0(a[7:0],s[2:0],c[0]);
	eighttoone stage1(a[15:8],s[2:0],c[1]);
	twotoone stage2(c,s[3],f);
	
endmodule

module eighttoone(a,s,f);
	input [7:0] a;
	input [2:0] s;
	output f;
	reg f;
	always@(s,a)
	begin
		case(s)
			0: f =a[0];
			1: f =a[1];
			2: f =a[2];
			3: f =a[3];
			4: f =a[4];
			5: f =a[5];
			6: f =a[6];
			7: f =a[7];
		endcase
	end
endmodule

module twotoone(a,s,f);
	input [1:0] a;
	input s;
	output f;
	reg f;
	always@(s,a)
	begin
		if(s)
			f = a[1];
		else
			f = a[0];
	end
endmodule