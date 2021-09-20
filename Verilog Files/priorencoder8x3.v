`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2021 22:50:43
// Design Name: 
// Module Name: priorencoder8x3
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


module EnPri83(
    input en,
    input [7:0] d,
    output [2:0] b);
    reg [2:0] b;
    always@ (d , en)
    if(en) b=3'd0;
    else if(d[7]) b = 3'd7;
    else if (d[6]) b= 3'd6;
    else if (d[5]) b= 3'd5;
    else if (d[4]) b= 3'd4;
    else if (d[3]) b= 3'd3;
    else if (d[2]) b= 3'd2;
    else if (d[1]) b= 3'd1;
    else b= 3'd000;
    endmodule
