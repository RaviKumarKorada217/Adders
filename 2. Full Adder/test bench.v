`timescale 1ns / 1ps

module FA_tb( );
    reg A, B, Cin;
    wire Sum, Cout;
    
    fulladder DUT ( .A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout) );
    
    initial begin
        Cin=0;
        repeat(40) #20 begin
            A = $random;
            B = $random;
        end
    end
endmodule
