`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 001
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Implement a parameterized 2-to-1 multiplexer.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q001_implement_a_parameterized_2_to_1_multiplexer #(parameter WIDTH=8)(
 input wire [WIDTH-1:0] a,b, input wire sel, output wire [WIDTH-1:0] y
);
 assign y = sel ? b : a;
endmodule
