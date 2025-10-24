module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
);

    assign ringer = ring & ~vibrate_mode;//when its ringing and vibrate mode is 0, ringer is 1
    assign motor = ring & vibrate_mode;//when its ringing and vibrate mode is 1, motor is 1
    
endmodule
