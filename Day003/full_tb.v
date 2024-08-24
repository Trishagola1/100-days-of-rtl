`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2024 23:36:15
// Design Name: 
// Module Name: full_tb
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


module full_tb();
  reg a, b, Bin;
  wire Difference, Bout;
  
 full_subtractor FS1 (a,b,Bin,Difference,Bout);
  
initial begin
 #10   a = 0; b = 0; Bin = 0; 
 #20   a = 0; b = 0; Bin = 1; 
 #30   a = 0; b = 1; Bin = 0; 
 #40   a = 0; b = 1; Bin = 1; 
 #50   a = 1; b = 0; Bin = 0; 
 #60   a = 1; b = 0; Bin = 1; 
 #70   a = 1; b = 1; Bin = 0; 
 #80   a = 1; b = 1; Bin = 1;
 end
endmodule

