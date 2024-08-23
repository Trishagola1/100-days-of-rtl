`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2024 21:22:26
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
 reg A,B,Cin;
wire S, Carry;
full_adder FA1 (A,B,Cin,S,Carry);
initial 
begin
  A=0;B=0;Cin=0;
#2 A=0;B=0;Cin=1;
#4 A=0;B=1;Cin=0;
#6 A=0;B=1;Cin=1;
#8 A=1;B=0;Cin=0;
#10 A=1;B=0;Cin=1;
#12 A=1;B=1;Cin=0;
#14 A=1;B=1;Cin=1;
     end
endmodule
