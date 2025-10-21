module top_module(
    input [31:0] a,
    input [31:0] b,
    output reg [31:0] sum
);
   
    reg sel;
    wire [15:0] upp0;
    wire [15:0] upp1;
    add16 lower (.a(a[15:0]),.b(b[15:0]),.cin(1'b0),.sum(sum[15:0]),.cout(sel));
    add16 upper_with_carry_in_0 (.a(a[31:16]),.b(b[31:16]),.cin(1'b0),.sum(upp0),.cout());
    add16 upper_with_carry_in_1 (.a(a[31:16]),.b(b[31:16]),.cin(1'b1),.sum(upp1),.cout());
    
    always@(*) begin
        if (sel) begin
            sum [31:16] = upp1;
        end
        else sum [31:16] = upp0;
    end
    
endmodule
