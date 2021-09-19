`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2021 09:15:02
// Design Name: 
// Module Name: comparator 1bit
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


    module comparator1bit(input a, input b,
    output agb, output aeb, output alb);
    assign agb= a & (~b);
    assign aeb= ~(a ^b);
    assign alb = (~a )& b;
    endmodule
