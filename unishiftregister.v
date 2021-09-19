`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2021 13:58:22
// Design Name: 
// Module Name: unishiftregister
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


module Universalshiftregister( 
input clk,clrb,SDL, SDR, 
input [3:0] D, 
input [1:0] S, 
output reg [3:0] Q );
always @ ( posedge clk, negedge clrb)
if (~clrb) Q<=4'b0000;
else
case (S)
2'b00:Q<=Q;
2'b01: Q<={Q[2:0],SDL};
2'b10: Q<={SDR,Q[3:1]};
2'b11: Q<=D;
default: Q<=4'b0000;
endcase
endmodule
