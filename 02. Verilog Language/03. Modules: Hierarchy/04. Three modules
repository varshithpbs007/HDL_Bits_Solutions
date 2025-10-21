module top_module ( input clk,
                    input d,
                    output q
                  );
    
    wire one_two;//wire declared between one and two ff
    wire two_three;//wire declared between two and three ff
    
    my_dff one (.clk(clk), .d(d), .q(one_two) );
    my_dff two(.clk(clk), .d(one_two), .q(two_three) );
    my_dff three(.clk(clk), .d(two_three), .q(q) );

endmodule
