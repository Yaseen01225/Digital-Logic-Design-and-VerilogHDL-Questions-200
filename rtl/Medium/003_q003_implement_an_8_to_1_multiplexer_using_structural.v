`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 003
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Implement an 8-to-1 multiplexer using structural Verilog.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q003_implement_an_8_to_1_multiplexer_using_structural #(parameter WIDTH=1)(
 input wire [7:0] d, input wire [2:0] sel, output wire y
);
 wire [3:0] l1; wire [1:0] l2;
 assign l1[0]=sel[0]?d[1]:d[0]; assign l1[1]=sel[0]?d[3]:d[2];
 assign l1[2]=sel[0]?d[5]:d[4]; assign l1[3]=sel[0]?d[7]:d[6];
 assign l2[0]=sel[1]?l1[1]:l1[0]; assign l2[1]=sel[1]?l1[3]:l1[2];
 assign y=sel[2]?l2[1]:l2[0];
endmodule
