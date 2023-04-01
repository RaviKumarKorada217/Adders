module bcd_fadd (
    input [3:0] a,
    input [3:0] b,
    input     cin,
    output   cout,
    output [3:0] sum );
    wire [3:0]c;
    
    FAdd fa0(a[0],b[0],cin,sum[0],c[0]);
    FAdd fa1(a[1],b[1],c[0],sum[1],c[1]);
    FAdd fa2(a[2],b[2],c[1],sum[2],c[2]);
    FAdd fa3(a[3],b[3],c[2],sum[3],cout);
    
endmodule
