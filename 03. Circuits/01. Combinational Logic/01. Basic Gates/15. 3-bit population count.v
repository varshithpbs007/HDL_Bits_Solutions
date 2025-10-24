module top_module( 
    input [2:0] in,
    output reg [1:0] out );
    
    int i;
    
    always@(*) begin
        out = 0;
        for(i = 0; i < 3; i++) begin
            out = (in[i] == 1)? out + 1 : out;
        end
    end
 

endmodule
