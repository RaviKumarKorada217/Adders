module fulladder(
 input A,
 input B,
 input Cin,
 output Sum,
 output Cout
    );
 assign Sum = A^B^Cin;
 assign Cout = (A&B)|(B&Cin)|(Cin&A);
 
endmodule

// another way Gate Level Modeling

/*

`timescale 1ns / 1ps

module FA( a, b, c, sum, carry  );
    input a, b, c;
    output sum, carry;
    
    sum s1( a, b, c, sum);
    carry c1( a, b, c, carry);

endmodule

module sum( a, b, c, s);
    input a, b, c;
    output s;
    wire w1;
    
    xor x1( w1, a, b);
    xor x2( s, c, w1);
endmodule

module carry( a, b, c, cy);
    input a, b, c;
    output cy;
    wire w1, w2, w3;
    
    and a1(w1, a, b);
    and a2(w2, b, c);
    and a3(w3, a, c);
    or o1(cy, w1, w2, w3);
endmodule    

*/
