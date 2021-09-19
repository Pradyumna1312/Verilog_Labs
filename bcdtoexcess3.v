`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2021 23:52:23
// Design Name: 
// Module Name: bcdtoexcess3
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


    module bcd_excess3(b3,b2,b1,b0,e3,e2,e1,e0);
    input b3,b2,b1,b0;
    output e3,e2,e1,e0;
    assign e3=b3|b0&b2|b2&b1;
    assign e2=(~b1)&(~b0)&(b2)|(~b2)&(b0)|(~b2)&(b1);
    assign e1=(~b1)&(~b0)|b1&b0;
    assign e0=~b0;
    endmodule

