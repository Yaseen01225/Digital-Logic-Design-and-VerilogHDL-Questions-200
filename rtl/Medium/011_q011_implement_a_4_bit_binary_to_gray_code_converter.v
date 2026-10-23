`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 011
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Implement a 4-bit binary-to-Gray-code converter.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q011_implement_a_4_bit_binary_to_gray_code_converter #(parameter WIDTH=4)(input wire [WIDTH-1:0] binary, output wire [WIDTH-1:0] gray);
 assign gray = binary ^ (binary >> 1);
endmodule
