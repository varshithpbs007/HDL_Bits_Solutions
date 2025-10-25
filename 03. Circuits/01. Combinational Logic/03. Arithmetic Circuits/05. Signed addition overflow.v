module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); //signed overflow occurs when addition of two positive numbers result in negative and addition of two negative results in positive
 
    assign s = a + b;
    assign overflow = a[7] & b[7] & ~s[7] | ~a[7] & ~b[7] & s[7] ;//signed overflow occurs when addition of two positive numbers result in negative and addition of two negative results in positive
//so we check if msb of operands is 1 and msb of result is 0 or viceversa, where either of the conditions indicate overflow 

endmodule
