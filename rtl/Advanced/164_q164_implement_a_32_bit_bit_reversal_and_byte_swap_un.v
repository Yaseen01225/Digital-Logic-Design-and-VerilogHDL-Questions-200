`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 164
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Implement a 32-bit bit-reversal and byte-swap unit with selectable permutation modes.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q164_implement_a_32_bit_bit_reversal_and_byte_swap_un #(parameter WIDTH=32)(input wire [WIDTH-1:0] data, output reg [WIDTH-1:0] reversed);
 integer i; always @* begin for(i=0;i<WIDTH;i=i+1) reversed[i]=data[WIDTH-1-i]; end
endmodule
