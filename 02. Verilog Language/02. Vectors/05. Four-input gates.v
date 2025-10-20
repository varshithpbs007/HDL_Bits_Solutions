module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
    assign out_and = &in;//Reduction 'and' operator
    assign out_or = |in;//Reduction 'or' operator
    assign out_xor = ^in;//Reduction 'xor' operator
endmodule
