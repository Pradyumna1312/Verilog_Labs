`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2021 01:02:17
// Design Name: 
// Module Name: jkflipflop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module jkflipflop( 
input clk, reset,
input [1:0] jk, 
output reg Q );
always @ (negedge clk)
if(reset) Q<=1'b0;
else case (jk)
2'b00: Q<=Q;
2'b01: Q<=1'b0;
2'b10: Q<=1'b1;
2'b11: Q<=~Q;
default: Q<=1'bZ;
endcase
endmodule

