`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2021 01:30:25
// Design Name: 
// Module Name: bcd7seg_TB
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


module bcd7seg_TB(

    );
    reg [3:0] bcd;
    wire [6:0] display;
    integer i;
    bcd7seg b1(bcd,display);
    initial 
    begin
    for(i=0;i<=9;i=i+1)
    begin bcd=i;
    #10;
    end 
    end
endmodule
