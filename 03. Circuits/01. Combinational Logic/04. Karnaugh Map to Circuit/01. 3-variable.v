module top_module(
    input a,
    input b,
    input c,
    output out  ); 

    // assign out = (b | c | a) ; //This is the POS expression where 0 --> uncomplemented (Ex: a) and 1 --> complemented (Ex : ~a)
    
    // assign out = b | (~b & a) | c; //This is the SOP version and it can even further be minimized(Absorption law)to b | a | c 
    assign out = b | a | c;
endmodule
