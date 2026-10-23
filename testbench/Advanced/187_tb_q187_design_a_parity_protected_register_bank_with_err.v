`timescale 1ns/1ps

// ============================================================================
// Testbench : tb_q187_design_a_parity_protected_register_bank_with_err
// DUT       : q187_design_a_parity_protected_register_bank_with_err
// Challenge : 187
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Purpose   : Apply deterministic smoke-test stimulus to the supplied DUT.
// Important : Review the challenge specification and DUT implementation.
//             This generic harness is not a substitute for a design-specific
//             self-checking scoreboard for complex protocols or arithmetic.
// ============================================================================

module tb_q187_design_a_parity_protected_register_bank_with_err;

    // Local parameters used to size parameterized DUT ports in this testbench.
    // The DUT is instantiated with its default parameter values.
    localparam WIDTH = 8;
    localparam COUNT_WIDTH = 16;
    localparam STAGES = 2;

    // Declare each DUT input as a reg so the testbench can drive it.
    reg clk;
    reg rst;
    reg start;
    reg enable;
    reg [WIDTH-1:0] data_in;

    // Declare each DUT output as a wire to observe the DUT response.
    wire [WIDTH-1:0] data_out;
    wire busy;
    wire done;
    wire error;

    // Instantiate the design under test (DUT) using named port connections.
    q187_design_a_parity_protected_register_bank_with_err dut (
        .clk(clk),
        .rst(rst),
        .start(start),
        .enable(enable),
        .data_in(data_in),
        .data_out(data_out),
        .busy(busy),
        .done(done),
        .error(error)
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
        start = 0;
        enable = 0;
        data_in = 0;

        // Wait briefly so initial values settle and any reset can take effect.
        repeat (2) @(posedge clk);
        #1;
        rst = 1'b0; // Release reset.

        // Apply twelve reproducible input patterns on falling clock edges.
        // Driving away from the active edge avoids testbench/DUT race conditions.
        for (vector_index = 0; vector_index < 12; vector_index = vector_index + 1) begin
            @(negedge clk);
            start = vector_index * 13 + 1; // Deterministic changing stimulus.
            enable = vector_index * 13 + 1; // Deterministic changing stimulus.
            data_in = vector_index * 13 + 1; // Deterministic changing stimulus.
            @(posedge clk);
            #1; // Sample after nonblocking assignments have updated.
        end

        // Report completion. Inspect the waveform and compare outputs against
        // expected behavior or add assertions/scoreboards for the specific task.
        $display("SMOKE TEST COMPLETE: Challenge 187 - q187_design_a_parity_protected_register_bank_with_err");
        $finish;
    end

    // Print all outputs whenever they change to make waveform/log inspection easier.
    always @(data_out, busy, done, error) $display("%0t data_out=%b busy=%b done=%b error=%b", $time, data_out, busy, done, error);

endmodule
