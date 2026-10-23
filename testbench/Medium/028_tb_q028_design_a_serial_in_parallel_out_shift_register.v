`timescale 1ns/1ps

// ============================================================================
// Testbench : tb_q028_design_a_serial_in_parallel_out_shift_register
// DUT       : q028_design_a_serial_in_parallel_out_shift_register
// Challenge : 028
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Purpose   : Apply deterministic smoke-test stimulus to the supplied DUT.
// Important : Review the challenge specification and DUT implementation.
//             This generic harness is not a substitute for a design-specific
//             self-checking scoreboard for complex protocols or arithmetic.
// ============================================================================

module tb_q028_design_a_serial_in_parallel_out_shift_register;

    // Local parameters used to size parameterized DUT ports in this testbench.
    // The DUT is instantiated with its default parameter values.
    localparam WIDTH = 8;
    localparam COUNT_WIDTH = 16;
    localparam STAGES = 2;

    // Declare each DUT input as a reg so the testbench can drive it.
    reg clk;
    reg rst;
    reg en;
    reg dir;
    reg serial_in;
    reg [WIDTH-1:0] parallel_in;

    // Declare each DUT output as a wire to observe the DUT response.
    wire [WIDTH-1:0] q;

    // Instantiate the design under test (DUT) using named port connections.
    q028_design_a_serial_in_parallel_out_shift_register dut (
        .clk(clk),
        .rst(rst),
        .en(en),
        .dir(dir),
        .serial_in(serial_in),
        .parallel_in(parallel_in),
        .q(q)
    );

    // Generate a 10 ns destination/system clock for sequential designs.
    initial clk = 1'b0;
    always #5 clk = ~clk;

    // Main stimulus sequence: initialize inputs, exercise deterministic patterns,
    // and finish cleanly so simulation scripts can detect completion.
    integer vector_index;
    initial begin
        // Initialize every input to a known value before applying stimulus.
        rst = 1'b1;
        en = 0;
        dir = 0;
        serial_in = 0;
        parallel_in = 0;

        // Wait briefly so initial values settle and any reset can take effect.
        repeat (2) @(posedge clk);
        #1;
        rst = 1'b0; // Release reset.

        // Apply twelve reproducible input patterns on falling clock edges.
        // Driving away from the active edge avoids testbench/DUT race conditions.
        for (vector_index = 0; vector_index < 12; vector_index = vector_index + 1) begin
            @(negedge clk);
            en = vector_index * 13 + 1; // Deterministic changing stimulus.
            dir = vector_index * 13 + 1; // Deterministic changing stimulus.
            serial_in = vector_index * 13 + 1; // Deterministic changing stimulus.
            parallel_in = vector_index * 13 + 1; // Deterministic changing stimulus.
            @(posedge clk);
            #1; // Sample after nonblocking assignments have updated.
        end

        // Report completion. Inspect the waveform and compare outputs against
        // expected behavior or add assertions/scoreboards for the specific task.
        $display("SMOKE TEST COMPLETE: Challenge 028 - q028_design_a_serial_in_parallel_out_shift_register");
        $finish;
    end

    // Print all outputs whenever they change to make waveform/log inspection easier.
    always @(q) $display("%0t q=%b", $time, q);

endmodule
