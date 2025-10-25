module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    
    wire w1,w2,w3;
    
    FA fa_0 (.a(x[0]),.b(y[0]),.cin(1'b0),.sum(sum[0]),.cout(w1));
    FA fa_1 (.a(x[1]),.b(y[1]),.cin(w1),.sum(sum[1]),.cout(w2));
    FA fa_2 (.a(x[2]),.b(y[2]),.cin(w2),.sum(sum[2]),.cout(w3));
    FA fa_3 (.a(x[3]),.b(y[3]),.cin(w3),.sum(sum[3]),.cout(sum[4]));
    
endmodule

module FA (
           input a,b,cin,
           output sum, cout);
    assign sum = a^b^cin;
    assign cout = a&b | b&cin | cin&a; 
endmodule
    
