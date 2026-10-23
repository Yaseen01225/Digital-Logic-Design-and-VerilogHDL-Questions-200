`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 027
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Design an 8-bit serial-in serial-out shift register.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q027_design_an_8_bit_serial_in_serial_out_shift_regis #(parameter WIDTH=8)(input wire clk,rst,en,dir,serial_in,input wire [WIDTH-1:0] parallel_in,output reg [WIDTH-1:0] q);
 always @(posedge clk) begin
   if(rst) q<=0;
   else if(en) begin
     if(dir) q<={q[WIDTH-2:0],serial_in};
     else q<={serial_in,q[WIDTH-1:1]};
   end
 end
endmodule
