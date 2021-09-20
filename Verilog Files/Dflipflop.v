`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2021 01:45:45
// Design Name: 
// Module Name: Dflipflop
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



    module Dflipflop(
    output reg Q,
    input clk,rst,din
     );
    always @(posedge clk or posedge rst)
    begin
    if(rst) Q<= 1'b0;
    else Q<= din;
    end
    endmodule

