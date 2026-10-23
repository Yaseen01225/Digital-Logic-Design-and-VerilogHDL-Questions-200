`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 009
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Implement an odd-parity generator for an 8-bit input.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q009_implement_an_odd_parity_generator_for_an_8_bit_i(input wire [7:0] data, output wire parity);
 assign parity = ~(^data); // odd parity bit: total number of ones including parity is odd
endmodule
