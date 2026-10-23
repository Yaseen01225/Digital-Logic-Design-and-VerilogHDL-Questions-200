`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 040
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Implement a modulo-N counter using a parameter.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q040_implement_a_modulo_n_counter_using_a_parameter #(parameter WIDTH=4, MODULUS=10)(input wire clk,rst,en,down,output reg [WIDTH-1:0] count);
 always @(posedge clk) begin
   if(rst) count<=0;
   else if(en) begin
     if(down) begin if(count==0) count<=MODULUS-1; else count<=count-1'b1; end
     else begin if(count>=MODULUS-1) count<=0; else count<=count+1'b1; end
   end
 end
endmodule
