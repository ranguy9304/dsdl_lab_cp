`timescale 1ns / 1ns
`include "q4.v"

module q4_tb();
    reg a0, a1, a2, a3;
    reg b0, b1, b2, b3;
    wire G, L, E;

    
    q4 q4( G, L, E,a0, a1, a2, a3, b0, b1, b2, b3);
    
    initial 
    begin
    	$dumpfile("q4_tb.vcd");
  	$dumpvars(0, q4_tb);
        repeat(16) begin
            a0 = $urandom_range(0, 15);
            a1 = $urandom_range(0, 15);
            a2 = $urandom_range(0, 15);
            a3 = $urandom_range(0, 15);
            b0 = $urandom_range(0, 15);
            b1 = $urandom_range(0, 15);
            b2 = $urandom_range(0, 15);
            b3 = $urandom_range(0, 15);
            #50;
        end
        $display("test complete");
    end
endmodule
