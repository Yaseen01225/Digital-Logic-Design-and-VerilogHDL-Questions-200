`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 014
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Implement a 4-bit one-hot decoder with an enable signal.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q014_implement_a_4_bit_one_hot_decoder_with_an_enable(input wire en, input wire [2:0] sel, output reg [7:0] y);
 always @* begin y=8'b0; if(en) y=8'b1 << sel; end
endmodule
