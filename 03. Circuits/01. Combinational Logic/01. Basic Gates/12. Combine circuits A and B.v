module top_module (input x, input y, output z);
    
    wire w1, w2;
    wire zia1, zia2, zib1, zib2;
    
    A IA1 (.x(x),.y(y),.za(zia1));
    B IB1 (.x(x),.y(y),.zb(zib1));
    A IA2 (.x(x),.y(y),.za(zia2));
    B IB2 (.x(x),.y(y),.zb(zib2));
    
    assign w1 = zia1 | zib1;
    assign w2 = zia2 & zib2;
    
    assign z = w1 ^ w2;
    

endmodule

module A ( input x, input y, output za );
      assign za = (x^y) & x;

endmodule

module B ( input x, input y, output zb );
     assign zb = ~(x ^ y);


endmodule
