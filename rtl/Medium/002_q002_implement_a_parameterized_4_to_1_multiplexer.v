`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 002
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Implement a parameterized 4-to-1 multiplexer.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q002_implement_a_parameterized_4_to_1_multiplexer #(parameter WIDTH=8)(
 input wire [WIDTH-1:0] d0,d1,d2,d3, input wire [1:0] sel, output reg [WIDTH-1:0] y
);
 always @* begin
   case(sel)
     2'd0:y=d0; 2'd1:y=d1; 2'd2:y=d2; default:y=d3;
   endcase
 end
endmodule
