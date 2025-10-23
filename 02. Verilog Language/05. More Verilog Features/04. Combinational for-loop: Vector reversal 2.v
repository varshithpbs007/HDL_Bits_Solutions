module top_module( 
    input [99:0] in,
    output [99:0] out
);//Here this code works even though out is not declared as 'reg' type beacuse ports are declared inside the module header
    //for usability on any platform we prefer to write ---> output reg [99:0] out;
    
    always@(*) begin
        integer i =0;
        for(i = 0; i<100; i++) begin
            out[i] = in[99-i];
        end
    end
endmodule
