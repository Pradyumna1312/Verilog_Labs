`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2021 22:39:32
// Design Name: 
// Module Name: sequence
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


module seqdetector( 
input a,clk,reset,
output reg q );
parameter [1:0] S0=2'b00, S1=2'b01, S2=2'b10;
reg [1:0] PS,NS;
always @ (PS,a)
case (PS)
S0 : if(a) NS=S1;
else NS=S0;
S1: if(a) NS=S1;
else NS=S2;
S2: if(a) NS=S1;
else NS=S0;
default: NS=S0;
endcase
always @ (posedge clk)
if(reset) PS<= S0;
else PS<= NS;
always @ (PS,a)
case (PS)
S0 : q=1'b0;
S1 : q=1'b0;
S2: if(a) q=1'b1;
else q=1'b0;
default: q=1'b0;
endcase
endmodule
