`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2024 21:41:36
// Design Name: 
// Module Name: FA_2HA
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


module FA_2HA(a,b,cin,sum,carry);
 input a,b, cin;
 output  sum ,carry;
 assign sum = a ^ b ^ cin;
 assign carry = (a & b)|(a & cin)|(b & cin);
endmodule