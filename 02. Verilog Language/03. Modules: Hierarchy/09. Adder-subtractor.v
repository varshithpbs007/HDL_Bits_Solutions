module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire internal_carry;//wire between upper and lower module
    wire [31:0] xor_out; //output of xor with b ^ {32{sub}}
    
    assign xor_out = b ^ {32{sub}};
    
    add16 lower (.a(a[15:0]),.b(xor_out[15:0]),.cin(sub),.sum(sum[15:0]),.cout(internal_carry));
    add16 upper (.a(a[31:16]),.b(xor_out[31:16]),.cin(internal_carry),.sum(sum[31:16]),.cout());
endmodule
