`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2021 00:53:49
// Design Name: 
// Module Name: JKFF
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



    modulejkflop( input clk, input reset, input [1:0] jk, output regQ );
    always @ (negedgeclk)
    if(reset) Q<=1'b0;
    else if (preset)Q<=1'b1;
    elsecase (jk)
    2'b00: Q<=Q;
    2'b01: Q<=1'b0;
    2'b10: Q<=1'b1;
    2'b11: Q<=~Q;
    default: Q<=1'bZ;
    endcase
    endmodule
endmodule
