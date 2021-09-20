`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2021 23:53:42
// Design Name: 
// Module Name: bcdtoexcess3_TB
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


module bcdtoexcess3_TB();
    reg b3,b2,b1,b0;
    wire e3,e2,e1,e0;
    bcd_excess3 be1(b3,b2,b1,b0,e3,e2,e1,e0);
    initial
    begin
    b3<=1'b1;
    b2<=1'b0;
    b1<=1'b0;
    b0<=1'b1;
    #10
    b3<=1'b0;
    b2<=1'b0;
    b1<=1'b0;
    b0<=1'b0;
    end
endmodule
