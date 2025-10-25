module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    
    wire [3:0] carry;
    assign carry[0] = cin;
    assign cout = carry[3:1];
    
    fa fa_0 (.a(a[0]),.b(b[0]),.cin(carry[0]),.sum(sum[0]),.cout(carry[1]));
    fa fa_1 (.a(a[1]),.b(b[1]),.cin(carry[1]),.sum(sum[1]),.cout(carry[2]));
    fa fa_2 (.a(a[2]),.b(b[2]),.cin(carry[2]),.sum(sum[2]),.cout(carry[3]));

endmodule

module fa (input a,b,cin,
           output sum,cout);
    
    assign sum = a ^ b ^ cin;
    assign cout = a & b | b & cin | cin & a;
    
endmodule
