`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 055
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Implement a signed/unsigned comparator selected by a mode input.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q055_implement_a_signed_unsigned_comparator_selected #(parameter WIDTH=8)(input wire [WIDTH-1:0] a,b, input wire signed_mode, output wire gt,eq,lt);
 wire signed [WIDTH-1:0] sa=a, sb=b;
 assign gt = signed_mode ? (sa>sb) : (a>b);
 assign eq = (a==b);
 assign lt = signed_mode ? (sa<sb) : (a<b);
endmodule
