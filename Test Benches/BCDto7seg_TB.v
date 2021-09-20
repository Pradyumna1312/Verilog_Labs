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


module BCDto7seg_TB();
reg [3:0] i;
wire [6:0] s;
BCDto7seg m1(i,s);
initial 
begin
i=4'b0000;
#50 i=4'b0001;
#50 i=4'b0010;
#50 i=4'b0011;
#50 i=4'b0100;
#50 i=4'b0101;
#50 i=4'b0111;
#50 i=4'b1000;
#50 i=4'b1001;
#50 i=4'b1010;
#50 i=4'b1011;
#50 i=4'b1100;
#50 i=4'b1101;
#50 i=4'b1110;
#50 i=4'b1111;
end
endmodule