`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2021 14:50:55
// Design Name: 
// Module Name: BCDto7seg 
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


module BCDto7seg( 
input [3:0] bcd,
output reg [6:0] display);
parameter blank = 7'b111_1111;
parameter zero =7'b000_0001;
parameter one= 7'b100_1111;
parameter two= 7'b001_0010;
parameter three= 7'b000_0110;
parameter four= 7'b100_1100;
parameter five = 7'b010_0100;
parameter six= 7'b010_0000;
parameter seven=7'b000_1111;
parameter eight=7'b000_00000;
parameter nine= 7'b000_0100;
always @ (*)
case (bcd)
0: display= zero;
1: display= one;
2: display= two;
3: display=three;
4: display= four;
5: display=five;
6: display= six;
7:display=seven;
8:display= eight;
9:display=nine;
default:display=blank;
endcase
endmodule
