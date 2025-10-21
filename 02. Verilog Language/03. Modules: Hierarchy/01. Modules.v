module top_module ( input a, input b, output out );
    
    mod_a instance1 (.in1(a), .in2(b), .out(out) );//connecting module instance to top module by port name
    //mod_a instance1 (a, b, out); //connecting module instantiation to top module through port position

endmodule
