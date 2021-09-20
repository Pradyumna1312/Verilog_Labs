`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2021 14:50:55
// Design Name: 
// Module Name: decoder24
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


module decoder24(
output reg[3:0]y,
input[1:0]i);
always@(i)
begin
case (i)
2'b00 : y = 4'b0001;
2'b01 : y = 4'b0010;
2'b10 : y = 4'b0100;
2'b11 : y = 4'b1000;
default: y=4'b0000;
endcase
end
endmodule
