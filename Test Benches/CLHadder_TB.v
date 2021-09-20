`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2021 00:40:39
// Design Name: 
// Module Name: CLHadder_TB
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


module CLAadder_TB();
    reg [3:0] a,b;
    reg cin;
    wire [3:0] sum;
    wire cout;
    carrylookadder c1(a, b, cin, sum, cout );
    initial 
    begin
    a<=4'b1000;b<=4'b0111;cin<=1'b0;
    #50 a<=4'b0100;b<=4'b1011;cin<=1'b0;
    #50 a<=4'b0110;b<=4'b0001;cin<=1'b0;
    end
endmodule

