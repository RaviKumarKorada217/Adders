`timescale 1ns / 1ps

module HA_tb( );
    reg a, b;
    wire sum, carry;
    
    HA DUT ( .a(a), .b(b), .sum(sum), .carry(carry) );
    
    initial begin
        repeat(40) #20 begin
            a = $random;
            b = $random;
        end
    end
endmodule 
