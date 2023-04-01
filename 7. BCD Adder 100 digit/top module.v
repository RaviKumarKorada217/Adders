module bcd_100digit( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire [99:0]c;    
    genvar i;
    
    generate 
        bcd_fadd BCD0( a[3:0], b[3:0], cin, c[0], sum[3:0] );
        for(i=4;i<400;i=i+4) begin : Bcd_full_adder
            bcd_fadd BCD( a[i+3:i], b[i+3:i], c[i/4-1], c[i/4], sum[i+3:i] );
        end
    endgenerate
    
    assign cout=c[99];

endmodule
