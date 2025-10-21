module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire internal_carry;
    add16 lower (.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(internal_carry));
    add16 upper (.a(a[31:16]), .b(b[31:16]), .cin(internal_carry), .sum(sum[31:16]), .cout());
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

    assign sum = a ^ b ^ cin;
    assign cout = a & b | b & cin | cin & a; 

endmodule
