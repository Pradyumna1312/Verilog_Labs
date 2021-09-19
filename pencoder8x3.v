`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2021 01:34:02
// Design Name: 
// Module Name: pencoder8x3
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


module pencoder8x3(En,d, b

    );
    input En;
    input [7:0] d;
    output [2:0] b;
    reg [2:0]b;
    always@ (d, En)
     begin
    if(En) b = 3'b000;
    else
     case(d)
     8'b00000001: b = 3'b000;
     8'b00000010: b= 3'b001;
     8'b00000100: b = 3'b010;
     8'b00001000: b = 3'b011;
     8'b00010000: b = 3'b100;
     8'b00100000: b = 3'b101;
     8'b01000000: b = 3'b110;
     8'b10000000: b = 3'b111;
    default: b = 3'b ZZZ;
     endcase
     end 

endmodule
