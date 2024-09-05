`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2024 23:05:25
// Design Name: 
// Module Name: FS_2HS
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


module FS_2HS(a,b,cin,diff,borrow);
input a,b ,cin;
output  diff,borrow;
wire w1,w2,w3;
half_sub H1(.a(a),.b(b),.diff(w1),.borrow(w2));
half_sub H2(.a(w1),.b(cin),.diff(diff),.borrow(w3));
or o1(borrow, w2,w3);
endmodule

module half_sub(a,b,diff,borrow);
   input a,b;
  output diff, borrow;
  assign diff = a ^ b;
  assign borrow = ~a & b;
endmodule