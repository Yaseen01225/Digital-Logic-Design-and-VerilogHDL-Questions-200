`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 017
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Design a full adder using two half adders.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q017_design_a_full_adder_using_two_half_adders(input wire a,b, output wire sum,carry);
 assign sum=a^b; assign carry=a&b;
endmodule
