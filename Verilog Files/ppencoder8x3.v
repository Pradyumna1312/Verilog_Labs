`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2021 02:04:58
// Design Name: 
// Module Name: ppencoder8x3
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



    module penc83(en,d, b);
    input en;
    input [7:0] d;
    output [2:0] b;
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
    else b = 3'd0;
    endmodule
