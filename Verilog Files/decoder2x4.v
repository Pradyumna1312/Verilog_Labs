`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2021 01:14:37
// Design Name: 
// Module Name: decoder2x4
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


module decoder2x4(
    input [1:0] i,
    output reg [3:0] y
    );
    always@(i)
    begin
    case (i)
    2'b 00 : y = 4'b 0001;
    2'b 01 : y = 4'b 0010;
    2'b 10 : y = 4'b 0100;
    2'b 11 : y = 4'b 1000;
    default: y=4'b0000;
    endcase
    end
endmodule
