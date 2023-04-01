module Carry_Select_Adder(
    input [31:0] a,
    input [31:0] b,
    input cin,
    output reg[31:0] sum,
    output reg cout
);
    
    wire  c1, cout1, cout2;
    wire [15:0] sum0, sum1, sum2;
    
    generate
    
    add16 M1( a[15:0], b[15:0], cin, sum0, c1);
    
    add16 M2( a[31:16], b[31:16], 1'b0, sum1, cout1);
    add16 M3( a[31:16], b[31:16], 1'b1, sum2, cout2);
    
     endgenerate
    always@(*)
    if(c1==1'b1) begin
        sum[15:0] = sum0;
        sum[31:16] = sum2;
        cout = cout2;
    end
    else begin
        sum[15:0] = sum0;
        sum[31:16] = sum1;
        cout = cout1;
    end
  
endmodule
