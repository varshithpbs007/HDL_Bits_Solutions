module top_module ( input x, input y, output z );
    
  //the graph descibes the behaviour of a 2-input xnor gate
    
    assign z = ~(x ^ y);

endmodule
