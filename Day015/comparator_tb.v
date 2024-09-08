`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2024 23:58:18
// Design Name: 
// Module Name: comparator_tb
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


module comparator_tb();
  reg [3:0]a,b;
  wire[2:0]z;
  comparator C00(z,a,b);
  initial 
    begin
 $display ("a      b     a>b   a=b    a<b");
 $monitor ("%b  %b    %b     %b     %b", a,b,z[0],z[1],z[2]);
      
      a=4'b1111; b=4'b1000;
 #10  a=4'b1100; b=4'b1100;
 #10  a=4'b0011; b=4'b1100;

 end
endmodule