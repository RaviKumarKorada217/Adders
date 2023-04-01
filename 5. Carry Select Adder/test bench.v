`timescale 1ns / 1ps

module CSA_tb(  );
    reg [31:0]a, b;
    reg cin;
    wire [31:0]sum;
    wire cout;
    
    Carry_Select_Adder dut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
    
    initial begin
        cin=0;
        
        repeat(40) #20 
           begin
            a=$random;
            b=$random;
           end
        
        #2000; $finish();
        
    end  
endmodule
