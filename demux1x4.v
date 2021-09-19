`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2021 00:59:19
// Design Name: 
// Module Name: demux1x4
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


module demux1x4(
    input i,
    input [1:0] s,
    output reg [3:0] y
    );
    always@ (s ,i)
    begin
    y = 4'b0000;
    case (s)
    2'b00:y[0] = i;
    2'b01:y[1] = i;
    2'b10:y[2] = i;
    2'b11:y[3] = i;
    default: y=4'b0000;
    endcase
    end
endmodule
