`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2024 22:10:51
// Design Name: 
// Module Name: DMUX_1TO_8
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


module DMUX_1TO_8(in,s0,s1,s2,d0,d1,d2,d3,d4,d5,d6,d7);
input in,s0,s1,s2;
output d0,d1,d2,d3,d4,d5,d6,d7;
assign d0=(in & ~s2 & ~s1 &~s0),
       d1=(in & ~s2 & ~s1 &s0),
       d2=(in & ~s2 & s1 &~s0),
       d3=(in & ~s2 & s1 &s0),
       d4=(in & s2 & ~s1 &~s0),
       d5=(in & s2 & ~s1 &s0),
       d6=(in & s2 & s1 &~s0),
        d7=(in & s2 & s1 &s0);
endmodule
