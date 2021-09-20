`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2021 09:28:03
// Design Name: 
// Module Name: comparator4bit_TB
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


module comparator4bit_TB();
    reg [3:0] a,b;
    wire a_g_b,a_e_b,a_l_b;
    comparator4bit c1(a,b,a_g_b,a_e_b,a_l_b);
    initial
    begin
    a=4'b0001;b=4'b0100;
    #10 a=4'b1111;b=4'b1011;
    #10 a=4'b0000;b=4'b0000;
    end
endmodule
