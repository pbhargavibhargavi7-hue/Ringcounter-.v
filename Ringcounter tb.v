`timescale 1ns/1ps

module ring_counter_tb;

    reg clk;
    reg rst;

    wire [3:0] q;

    // Instantiate Ring Counter
    ring_counter uut (
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Initialize
        clk = 0;
        rst = 1;

        // Apply reset
        #10;
        rst = 0;

        // Allow counter to run
        #50;

        $finish;

    end

    // Display output
    initial begin

        $monitor(
            "Time=%0t | Reset=%b | Counter=%b",
            $time, rst, q
        );

    end

    // Generate waveform
    initial begin

        $dumpfile("ring_counter.vcd");
        $dumpvars(0, ring_counter_tb);

    end

endmodule