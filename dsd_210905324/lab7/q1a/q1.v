module caller(sel,out);
    input [3:0] sel;
    output out;
    eto1 s0(sel,out);
endmodule

module eto1(sel,out);
    input [3:0] sel;
    output out;
    reg out;
    always @(sel,out)
    begin
        if(sel[2:1]==0)
            out=~sel[1]|sel[0];
        if(sel[2:1]==1)
            out=sel[0];
        if(sel[2:1]==2)
            out=0;
        if(sel[2:1]==3)
            out=0;
       
        
    end
        
endmodule