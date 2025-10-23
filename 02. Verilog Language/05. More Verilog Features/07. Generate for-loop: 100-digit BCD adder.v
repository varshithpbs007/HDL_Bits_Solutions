module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire [100:0] carry;
    
    assign carry[0] = cin;
    assign cout = carry[100];
    
    genvar i;
    generate 
        for(i = 0; i<100; i++) begin:gen_bcd
            bcd_fadd inst (.a(a[4*i +: 4]),.b(b[4*i +: 4]),.cin(carry[i]),.sum(sum[4*i +: 4]),.cout(carry[i+1]));  
            // 1. signal[base +: width] is used to select a contiguous vector slice where base, width can be any expression,
            //and they need not be only constants. Ex: for i = 3 ,a[4*i +: 4] means a[12 +: 4] --> a[15:12]
            //if we observe in 1. clearly we can see that due to "+:" we count upward starting from base till we complete no of bits in width
            // 2. signal[base -: width], here as "-:" it starts with base and goes down counting towards lsb till we complete the width mentioned
            // ex: a[4*i -: 4] --> say i = 3, then a[12 -: 4]---> a[12:9]
        end
    endgenerate

endmodule
