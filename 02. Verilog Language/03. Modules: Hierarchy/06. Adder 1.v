module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout_middle;
    add16 lower (.a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum[15:0]), .cout(cout_middle));
    add16 upper (.a(a[31:16]), .b(b[31:16]), .cin(cout_middle), .sum(sum[31:16]), .cout(0));

endmodule

