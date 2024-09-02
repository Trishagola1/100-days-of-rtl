`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2024 22:10:15
// Design Name: 
// Module Name: Mux_tb
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


module Mux_tb();
    reg s0,s1,a0,a1,a2,a3;
    wire y;
 Mux_4 AA00(s0,s1,a0,a1,a2,a3,y);
    initial
    begin
 #5   s1=0;s0=0;a0=0;a1=1;a2=0;a3=1;
 #5   s1=0;s0=1;a0=0;a1=1;a2=0;a3=1;
 #5   s1=1;s0=0;a0=0;a1=1;a2=0;a3=1;
 #5   s1=1;s0=1;a0=0;a1=1;a2=0;a3=1;
 $finish;
 end
 
endmodule
