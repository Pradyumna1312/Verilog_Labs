`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2021 03:38:46
// Design Name: 
// Module Name: asynccounter
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


module asynccounter(
    input clk,
    output[3:0] count);
    reg[3:0] count;
    wire clk;
    initial
        count = 4'b0000;
    always @( negedge clk )
        count[0] <= ~count[0];
    always @( negedge count[0] )
        count[1] <= ~count[1];
    always @( negedge count[1] )
        count[2] <= ~count[2];
    always @( negedge count[2] )
        count[3] <= ~count[3];
    endmodule

