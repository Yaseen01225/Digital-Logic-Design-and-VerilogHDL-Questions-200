`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 163
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Design a population-count tree for a 64-bit input with pipeline stages.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q163_design_a_population_count_tree_for_a_64_bit_inpu #(parameter WIDTH=64)(input wire [WIDTH-1:0] data, output reg [6:0] count);
 integer i;
 always @* begin count=0; for(i=0;i<WIDTH;i=i+1) count=count+data[i]; end
endmodule
