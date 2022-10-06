module q1(s0,s1,w0,w1,w2,w3,f);
input s0,s1,w0,w1,w2,w3;
output f;
mux2 stage1(s0,w0,w1,f0);
mux2 stage2(s0,w2,w3,f1);
mux2 stage3(s1,f0,f1,f);
endmodule

module mux2(s,w0,w1,f);
input s,w0,w1;
output f;
reg f;
always @(s)
begin
    if(s==0)
      assign f = w0;
    if(s==1)
      assign f = w1;  
end
endmodule      
