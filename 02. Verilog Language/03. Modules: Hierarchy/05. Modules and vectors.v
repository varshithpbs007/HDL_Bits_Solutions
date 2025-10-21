module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output reg [7:0] q //Declaring 'q' as 'reg' type is necessary becuase it is updated inside an "always@" block
);
    parameter SEL0 = 2'b00 , SEL1 = 2'b01 , SEL2 = 2'b10 , SEL3 = 2'b11;
    
    wire [7:0] w1;//between 1st and 2nd flipflop
    wire [7:0] w2;//betweeen 2nd and 3rd flipflop
    wire [7:0] w3;//between 3rd flipflop and mux
    
    
    my_dff8 inst1 (.clk(clk), .d(d), .q(w1));
    my_dff8 inst2 (.clk(clk), .d(w1), .q(w2));
    my_dff8 inst3 (.clk(clk), .d(w2), .q(w3));
    
    always@(*)
        begin
            case(sel)
                SEL0 : q = d;
                SEL1 : q = w1;
                SEL2 : q = w2;
                SEL3 : q = w3;
                default : q = w3;
            endcase
        end
endmodule
