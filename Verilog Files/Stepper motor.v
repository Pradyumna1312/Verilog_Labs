`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2021 23:20:44
// Design Name: 
// Module Name: Stepper motor
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


module Steppermotor(clk,rst,dir,speed,dout);
input clk,rst,dir;
input [1:0] speed;
output [3:0]dout;
reg [26:0]clkd;
reg [3:0]shift;
reg clk1;
always@(posedge clk)
begin
clkd=clkd+1'b1;
end
always @(speed)
begin
case (speed)
2'b00: clk1=clkd[10];
2'b01:clk1=clkd[15];
2'b10:clk1=clkd[20];
2'b11: clk1=clkd[24];
default: clk1= clkd[20];
endcase
end
always@(posedge clk1)
begin
if(rst)shift<=4'b1001;
else if(dir)shift<={shift[0],shift[3:1]};
else shift<={shift[2:0],shift[3]};
end
assign dout=shift;
endmodule
