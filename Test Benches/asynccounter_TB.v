`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2021 03:41:22
// Design Name: 
// Module Name: asynccounter_TB
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


module asynccounter_TB();
    reg clk;
    wire [3:0] count;
    asynccounter as1(clk,count);
        initial
        begin
        clk=0;
        forever #10 clk=~clk;
        end
endmodule
