`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2021 02:14:38
// Design Name: 
// Module Name: graytobinary
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


module graytobinary(
    output [3:0] binary,
    input [3:0] gray);
    assign binary[3] = gray[3];
    assign binary[2] = gray[3]^gray[2];
    assign binary[1] = gray[3]^gray[2]^gray[1];
    assign binary[0] = gray[3]^gray[2]^gray[1]^gray[0];
endmodule
