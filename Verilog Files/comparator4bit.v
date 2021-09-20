`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2021 09:26:04
// Design Name: 
// Module Name: comparator4bit
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


    module comparator_2bit(input [1:0]a, input [1:0]b,
    output agb, output aeb, output alb);
    wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;
    not (w1,b[1]);
    and (w2,w1,a[1]);
    not (w3,b[0]);
    and (w4,a[0],w1,w3);
    and (w5,a[1],a[0],w3);
    or (agb,w2,w4,w5);
    not (w6,a[1]);
    not (w7,a[0]);
    and (w8,w6,b[1]);
    and (w9,w6,w7,b[0]);
    and (w10,w7,b[1],b[0]);
    or (alb,w8,w9,w10);
    xnor (aeb,alb,agb);
    endmodule
module comparator4bit(input [3:0]a, 
input [3:0]b, output a_g_b, 
output a_e_b, output a_l_b);
    wire l1,e1,g1,l2,e2,g2,d1,d2;
    comparator_2bit f51(a[3:2],b[3:2],g1,e1,l1);
    comparator_2bit f52(a[1:0],b[1:0],g2,e2,l2);
    and (d1,e1,g2);
    and (d2,e1,l2);
    or (a_g_b,g1,d1);
    or (a_l_b,l1,d2);
    and (a_e_b,e1,e2);
    endmodule
