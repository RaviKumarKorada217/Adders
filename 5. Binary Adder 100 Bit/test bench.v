`timescale 1ns / 1ps

module binary_100bit_tb(  );
    reg [99:0] a, b;
    reg cin;
    wire [99:0] cout, sum;
    
    binary_100bit DUT ( .a(a), .b(b), .cin(cin), .cout(cout), .sum(sum) );
    
    initial begin
    cin=0;
    
    repeat(40) #20 begin 
        a = $random;
        b = $random;
    end
    #2000; $finish;
    end
endmodule
