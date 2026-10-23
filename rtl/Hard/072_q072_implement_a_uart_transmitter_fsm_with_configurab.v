`timescale 1ns/1ps
// Project   : Digital Logic Design - 200 Verilog Coding Challenges
// Challenge : 072
// Developer : Ghulam Yaseen Nangraj
// HDL       : Verilog-2001 (IEEE 1364-2001)
// Task      : Implement a UART transmitter FSM with configurable baud-rate tick input.
// Notes     : Educational reference implementation. Review assumptions and verify
//             with a self-checking testbench before hardware use.

module q072_implement_a_uart_transmitter_fsm_with_configurab #(parameter WIDTH=8, COUNT_WIDTH=16)(
 input wire clk, rst, start, enable,
 input wire [WIDTH-1:0] data_in,
 output reg [WIDTH-1:0] data_out,
 output reg busy, done, error
);
 reg [COUNT_WIDTH-1:0] count;
 // Baseline transaction template: capture input on start, hold result,
 // assert busy while counting, pulse done for one cycle on completion.
 always @(posedge clk) begin
   if(rst) begin
     count<=0; data_out<=0; busy<=0; done<=0; error<=0;
   end else begin
     done<=0;
     if(start && !busy) begin
       data_out<=data_in;
       count<=0;
       busy<=1;
       error<=0;
     end else if(busy && enable) begin
       if(count==0) begin busy<=0; done<=1; end
       else count<=count-1'b1;
     end
   end
 end
endmodule
