`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 005
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Design a 3-to-8 decoder with an active-high enable.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q005_design_a_3_to_8_decoder_with_an_active_high_enab(input wire en, input wire [2:0] sel, output reg [7:0] y);
 always @* begin y=8'b0; if(en) y=8'b1 << sel; end
endmodule
