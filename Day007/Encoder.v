`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2024 21:51:56
// Design Name: 
// Module Name: Encoder
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


module Encoder(D,Y);
input[7:0]D;
output [2:0]Y;
assign Y[2] = D[4]|D[5]|D[6]|D[7];
assign Y[1] =D[2]|D[3]|D[6]|D[7];
assign Y[0] = D[1]|D[3]|D[5]|D[7];
endmodule
