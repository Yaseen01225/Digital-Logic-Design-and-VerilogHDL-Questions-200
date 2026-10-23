`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 004
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Design a 1-to-8 demultiplexer with an enable input.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q004_design_a_1_to_8_demultiplexer_with_an_enable_inp(input wire en,d, input wire [2:0] sel, output reg [7:0] y);
 always @* begin y=8'b0; if(en) y[sel]=d; end
endmodule
