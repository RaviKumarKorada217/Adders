module binary_100bit( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
	
    genvar i;
    generate 
        FAdd fa0(a[0],b[0],cin,sum[0],cout[0]);
        for(i=1;i<100;i=i+1) begin : Full_Adder_Block
            FAdd fa(a[i],b[i],cout[i-1],sum[i],cout[i]);
    end
    endgenerate
           
endmodule
