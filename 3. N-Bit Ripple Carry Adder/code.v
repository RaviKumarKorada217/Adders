module Nbit_RCA #( parameter WIDTH=4 )( A, B, Cin, Sum, Cout );
 input [WIDTH-1:0]A, B;
 input Cin;
 output [WIDTH-1:0]Sum;
 output Cout;

wire [WIDTH:0]w;

assign w[0]=Cin;
assign Cout = w[WIDTH];

genvar i;
 generate 
  for( i=0; i<WIDTH; i=i+1) begin : FULL_ADDER
    fulladder UUT ( .A(A[i]), .B(B[i]), .Cin(w[i]), .Sum(Sum[i]), .Cout(w[i+1]));
   end
 endgenerate
endmodule  
