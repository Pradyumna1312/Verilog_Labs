`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2021 03:33:39
// Design Name: 
// Module Name: synccounter
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


module synccounter(count,rst,clk);
input rst,clk;
output reg [3:0] count;
initial 
begin
count<=4'b0000;
end
always @(posedge clk)
if(rst)
count<=4'b0000;
else
count<=count+4'b0001;
endmodule
