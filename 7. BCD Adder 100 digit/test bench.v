`timescale 1ns / 1ps

module bcd_100digit_tb(  );
    reg [399:0] a, b;
    reg cin;
    wire cout;
    wire [399:0] sum;
    
    bcd_100digit DUT ( .a(a), .b(b), .cin(cin), .cout(cout), .sum(sum) );
    
    initial begin
    cin=0;
    
    repeat(40) #20 begin 
        a = $random;
        b = $random;
    end
    #2000; $finish;
    end
endmodule
