`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2021 13:34:36
// Design Name: 
// Module Name: bcdcounter
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


module bcd_count(
input clk,
input rst,
output reg[3:0] count);
initial count=4'b0000;
always @ (posedge clk or posedge rst)
begin
if(rst) count = 4'b0000;
else if (count ==4'b1001) count=4'b0000;
else
count = count+1;
end
endmodule
