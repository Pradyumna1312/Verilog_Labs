`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2021 13:39:49
// Design Name: 
// Module Name: bcdcounter_TB
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


module bcdcounter_TB();
    reg clk;
    reg rst;
    wire [3:0] count;
    bcd_count b1(clk, rst, count);
    initial 
    begin
    clk=0;
    forever #10 clk=~clk;
    end
    initial 
    begin
    rst<=0;
    clk<=0;
    end
    
endmodule
