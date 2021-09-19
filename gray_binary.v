`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2021 00:07:57
// Design Name: 
// Module Name: gray_binary
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



    
module gray2bin
            (input [3:0] G, 
             output [3:0] binary   
            );
    
    assign binary[3] = G[3];
    assign binary[2] = G[3] ^ G[2];
    assign binary[1] = G[3] ^ G[2] ^ G[1];
    assign binary[0] = G[3] ^ G[2] ^ G[1] ^ G[0];
endmodule