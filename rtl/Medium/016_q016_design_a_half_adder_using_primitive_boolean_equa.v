`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 016
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Design a half adder using primitive Boolean equations.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q016_design_a_half_adder_using_primitive_boolean_equa(input wire a,b, output wire sum,carry);
 assign sum=a^b; assign carry=a&b;
endmodule
