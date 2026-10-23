`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 020
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Design a 4-bit binary subtractor with borrow output.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q020_design_a_4_bit_binary_subtractor_with_borrow_out #(parameter WIDTH=16)(input wire [WIDTH-1:0] a,b,input wire sub,output wire [WIDTH-1:0] result,output wire carry_or_borrow);
 wire [WIDTH:0] tmp;
 assign tmp={1'b0,a} + {1'b0,(b ^ {WIDTH{sub}})} + sub;
 assign result=tmp[WIDTH-1:0];
 assign carry_or_borrow=tmp[WIDTH];
endmodule
