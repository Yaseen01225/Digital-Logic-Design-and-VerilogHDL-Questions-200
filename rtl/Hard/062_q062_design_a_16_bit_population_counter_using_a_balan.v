`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 062
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Design a 16-bit population counter using a balanced tree.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q062_design_a_16_bit_population_counter_using_a_balan #(parameter WIDTH=16)(input wire [WIDTH-1:0] data, output reg [4:0] count);
 integer i;
 always @* begin count=0; for(i=0;i<WIDTH;i=i+1) count=count+data[i]; end
endmodule
