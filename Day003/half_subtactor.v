`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2024 22:57:49
// Design Name: 
// Module Name: half_subtactor
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


module half_subtactor(a,b,diff,borrow);
   input a,b;
  output diff, borrow;
  assign diff = a ^ b;
  assign borrow = ~a & b;
endmodule
