`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2021 15:47:32
// Design Name: 
// Module Name: Dec24_TB
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


module Dec24_TB();
reg[1:0] i;
wire [3:0]y;
decoder24 di(y,i);
initial 
begin
i=2'b00;
#200 i =2'b01;
#200 i =2'b10;
#200 i =2'b11;
end
endmodule
