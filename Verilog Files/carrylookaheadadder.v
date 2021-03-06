`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2021 09:49:10
// Design Name: 
// Module Name: carrylookaheadadder
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



   module carrylookadder (
   input [3:0] a, b, cin,
   output [3:0] sum,
   output cout 
      );
    wire g0,p0,g1,p1,g2,p2,g3,p3;
    wire c1,c2,c3;
    assign g0 = a[0] & b[0];
    assign p0 = a[0] ^ b[0];
    assign sum[0] = a[0] ^ b[0] ^ cin;
    assign c1 = g0 | (p0 &cin);
    assign g1 = a[1] & b[1];
    assign p1 = a[1] ^ b[1];
    assign sum[1] = a[1] ^ b[1] ^ c1;
    assign c2 = g1 | (p1 & c1);
    assign g2 = a[2] & b[2];
    assign p2 = a[2] ^ b[2];
    assign sum[2] = a[2] ^ b[2] ^ c2;
    assign c3 = g2 | (p2 & c2);
    assign g3 = a[3] & b[3];
    assign p3 = a[3] ^ b[3];
    assign sum[3] = a[3] ^ b[3] ^ c3;
    assign cout = g3 | (p3 & c3);
    endmodule

