`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2021 09:51:35
// Design Name: 
// Module Name: carrylookaheadadder_TB
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


module carrylookadder_TB();
    reg [3:0] a,b;
    reg cin;
    wire [3:0] sum;
    wire cout;
    carrylookadder c1(a,b,cin,sum,cout);
    initial 
    begin
    cin=0;
    a=4'b0001;b=4'b0100;
    #10 cin=1;
    a=4'b0100; b=4'b0100;
    end
endmodule
