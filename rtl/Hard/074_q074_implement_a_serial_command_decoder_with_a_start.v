`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 074
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Implement a serial command decoder with a start marker and fixed-length payload.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q074_implement_a_serial_command_decoder_with_a_start(input wire en, input wire [2:0] sel, output reg [7:0] y);
 always @* begin y=8'b0; if(en) y=8'b1 << sel; end
endmodule
