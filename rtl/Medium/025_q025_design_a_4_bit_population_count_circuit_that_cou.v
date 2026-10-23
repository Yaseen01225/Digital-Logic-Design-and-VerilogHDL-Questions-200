`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 025
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Design a 4-bit population-count circuit that counts the number of ones.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q025_design_a_4_bit_population_count_circuit_that_cou #(parameter WIDTH=8)(input wire [WIDTH-1:0] data, output reg [3:0] count);
 integer i;
 always @* begin count=0; for(i=0;i<WIDTH;i=i+1) count=count+data[i]; end
endmodule
