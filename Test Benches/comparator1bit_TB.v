`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2021 09:17:16
// Design Name: 
// Module Name: comparator1bit_TB
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


module comparator1bit_TB();
    reg a,b;
    wire aeb,alb,agb;
    comparator1bit c(a,b,agb,aeb,alb);
    initial 
    begin 
    a=1'b0;
    b=1'b1; 
    #10 
    a=1'b0;
    b=1'b0;
    end   
endmodule
