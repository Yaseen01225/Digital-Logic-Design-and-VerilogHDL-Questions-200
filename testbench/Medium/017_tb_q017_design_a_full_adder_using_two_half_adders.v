`timescale 1ns/1ps

// ============================================================================
// Testbench : tb_q017_design_a_full_adder_using_two_half_adders
// DUT       : q017_design_a_full_adder_using_two_half_adders
// Challenge : 017
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Purpose   : Apply deterministic smoke-test stimulus to the supplied DUT.
// Important : Review the challenge specification and DUT implementation.
//             This generic harness is not a substitute for a design-specific
//             self-checking scoreboard for complex protocols or arithmetic.
// ============================================================================

module tb_q017_design_a_full_adder_using_two_half_adders;

    // Local parameters used to size parameterized DUT ports in this testbench.
    // The DUT is instantiated with its default parameter values.
    localparam WIDTH = 8;
    localparam COUNT_WIDTH = 16;
    localparam STAGES = 2;

    // Declare each DUT input as a reg so the testbench can drive it.
    reg a;
    reg b;

    // Declare each DUT output as a wire to observe the DUT response.
    wire sum;
    wire carry;

    // Instantiate the design under test (DUT) using named port connections.
    q017_design_a_full_adder_using_two_half_adders dut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    // Main stimulus sequence: initialize inputs, exercise deterministic patterns,
    // and finish cleanly so simulation scripts can detect completion.
    integer vector_index;
    initial begin
        // Initialize every input to a known value before applying stimulus.
        a = 0;
        b = 0;

        // Wait briefly so initial values settle and any reset can take effect.
        // Combinational DUT: allow initialization to settle, then sweep patterns.
        #2;
        for (vector_index = 0; vector_index < 16; vector_index = vector_index + 1) begin
            a = vector_index * 7 + 3; // Deterministic input pattern.
            b = vector_index * 7 + 3; // Deterministic input pattern.
            #10; // Allow combinational propagation to settle.
        end

        // Report completion. Inspect the waveform and compare outputs against
        // expected behavior or add assertions/scoreboards for the specific task.
        $display("SMOKE TEST COMPLETE: Challenge 017 - q017_design_a_full_adder_using_two_half_adders");
        $finish;
    end

    // Print all outputs whenever they change to make waveform/log inspection easier.
    always @(sum, carry) $display("%0t sum=%b carry=%b", $time, sum, carry);

endmodule
