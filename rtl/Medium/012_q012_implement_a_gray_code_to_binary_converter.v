`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 012
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Implement a Gray-code-to-binary converter.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q012_implement_a_gray_code_to_binary_converter #(parameter WIDTH=4)(input wire [WIDTH-1:0] gray, output reg [WIDTH-1:0] binary);
 integer i;
 always @* begin
   binary[WIDTH-1]=gray[WIDTH-1];
   for(i=WIDTH-2;i>=0;i=i-1) binary[i]=binary[i+1]^gray[i];
 end
endmodule
