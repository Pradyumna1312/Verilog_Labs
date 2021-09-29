`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: RV College of Engineering
// Engineer: 
// 
// Create Date: 10.08.2021 23:07:41
// Design Name: 
// Module Name: serialadder
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


module serial_adder ( 
input [7:0] A,B,
input reset,clock,
output [7:0] sum
);
reg [3:0] count;
reg s,y,Y; wire run;
wire [7:0] qa,qb,sum;
parameter G=0,H=1;
shiftrne shift_A (A,reset,1'b1,1'b0,clock,qa);
shiftrne shift_B (B,reset,1'b1,1'b0,clock,qb);
shiftrne shift_sum (8'b0,reset,run,s,clock,sum);
//adder fsm
//output and next state combinational circuit
always @(qa or qb or y)
case (y)
G: begin
s = qa[0]^qb[0];
if (qa[0] &qb[0])
Y = H;
else Y = G;
end
H: begin
s = qa[0] ~^qb[0];
if (~qa[0] & ~qb[0])
Y =G;
else Y = H;
end
default : Y = G;
endcase
//sequential block
always @(posedge clock)
if (reset)
y <= G;
else y <= Y;
//control the shifting process
always @(posedge clock)
if (reset)
count = 8;
else if (run) count = count - 1;
assign run=|count;
endmodule
// shift register
module shiftrne #( 
parameter n=8)(
input [n-1:0] R,
input L,E,w,clock,
output [n-1:0] q);
reg [n-1:0] q;
integer k;
always @(posedge clock)
if (L)
q <= R;
else if (E)
begin
for (k=n-1;k>0;k=k-1)
q[k-1] <= q[k];
q[n-1] <= w;
end
endmodule
