`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2021 01:21:39
// Design Name: 
// Module Name: decoder2x4_TB
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


module decoder2x4_TB(

    );
    reg [1:0] i;
    wire [3:0] y;
    decoder2x4 d(i,y);
    initial 
    begin
    i=2'b00;
    #100 i=2'b01;
    #100 i=2'b10;
    #100 i=2'b11;
    end
endmodule
