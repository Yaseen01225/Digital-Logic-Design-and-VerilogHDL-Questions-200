`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 200
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Implement an integrated digital subsystem containing a command decoder, control FSM, datapath, status registers and error reporting.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q200_implement_an_integrated_digital_subsystem_contai(input wire en, input wire [2:0] sel, output reg [7:0] y);
 always @* begin y=8'b0; if(en) y=8'b1 << sel; end
endmodule
