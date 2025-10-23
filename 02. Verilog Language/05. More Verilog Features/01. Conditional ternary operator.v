module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    
    wire[7:0] intermediate_result_1;
    wire[7:0] intermediate_result_2;
    wire[7:0] intermediate_result_3;


    assign intermediate_result_1 = (a<b)?a:b;
    assign intermediate_result_2 = (intermediate_result_1<c)?intermediate_result_1:c;
    assign intermediate_result_3 = (intermediate_result_2<d)?intermediate_result_2:d;
    assign min = intermediate_result_3;
    // assign intermediate_result1 = compare? true: false;

endmodule
