`timescale 1ns / 1ns

module Nbit_RCA_tb(   );
    reg [9:0]A;
    reg [9:0]B;
    reg Cin;
    wire [9:0]Sum;
    wire Cout;
       
   Nbit_RCA #(.WIDTH(10)) fulladder_10bit(A, B, Cin, Sum, Cout);  
    
   // integer i, j;
     
    initial begin
       A=0; B=0; Cin=0;
        #20;
        A=598; B=1024;
        #20;
        A=2; B=98;
        #20;
        A=217; B=298;
        #20;
        A=222; B=555;
        $stop;
    end
endmodule
