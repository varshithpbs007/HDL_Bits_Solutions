module top_module (
    input c,
    input d,
    output [3:0] mux_in
); 
    /*This is the solution of version with out using 2-to-1 muxes
    assign mux_in[0] = c | d;  
    assign mux_in[1] = 1'b0;
    assign mux_in[2] = ~d;
    assign mux_in[3] = c & d;
    */
    
    
    //below version of the solution uses 2-to-1 muxes and doesnot use any logic gate
    assign mux_in[0] = d ? 1'b1 : c;  
    assign mux_in[1] = 1'b0;
    assign mux_in[2] = d ? 1'b0 : 1'b1;
    assign mux_in[3] = d ? c : 1'b0;
    

endmodule
