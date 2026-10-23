`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 134
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Design an asynchronous FIFO with binary pointers and Gray-coded pointer synchronization.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q134_design_an_asynchronous_fifo_with_binary_pointers #(parameter STAGES=2)(input wire clk,rst,async_in,output wire sync_out);
 (* ASYNC_REG="TRUE" *) reg [STAGES-1:0] sync_ff;
 integer i;
 always @(posedge clk) begin
   if(rst) sync_ff <= {STAGES{1'b0}};
   else begin sync_ff[0]<=async_in; for(i=1;i<STAGES;i=i+1) sync_ff[i]<=sync_ff[i-1]; end
 end
 assign sync_out=sync_ff[STAGES-1];
endmodule
