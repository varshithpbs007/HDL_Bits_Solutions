module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 

    //assign out = ~d&~a | ~c&~b | c&d&a | c&d&b;//SOP expression
    
    assign out = (~c | ~d | a | b) & ( d | ~a | ~b) & (~c | d | ~a) & (c | ~d | ~b); //POS expression
    
endmodule

