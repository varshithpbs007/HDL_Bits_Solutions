// synthesis verilog_input_version verilog_2001
module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up  ); 

    always@(*) begin
        left = 1'b0; down = 1'b0; right = 1'b0; up = 1'b0;//By setting deafault values before case, we can avoid inferring latches for the missed input combinations.
      //As we already set the default values, we can skip default statements and values of output are overwritten when any case statement matches the case expression only.
        case(scancode)
            16'he06b : left = 1;
            16'he072 : down = 1;
            16'he074 : right = 1;
            16'he075 : up = 1;

        endcase
    end
endmodule
