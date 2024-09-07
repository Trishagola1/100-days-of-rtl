`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2024 10:58:08
// Design Name: 
// Module Name: addsub
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

module half_adder(a, b, sum ,carry);
input a,b;
output sum, carry;
assign carry = a&b;
assign sum = a^b;
endmodule


module FA_2HA(a, b, cin , sum ,carry);
input a,b ,cin;
output  sum,carry;
wire w1,w2,w3;
half_adder H1(.a(a),.b(b),.sum(w1),.carry(w2));
half_adder H2(.a(w1),.b(cin),.sum(sum),.carry(w3));
or o1(carry, w2,w3);
endmodule

module addsub(a,b,cin,sum,cout);
  input [3:0] a,b;
  input cin;
  output [3:0]sum;
  output cout;
  wire c0,c1,c2;
  wire w1,w2,w3,w4;
  xor (w1,b[0],cin);
  xor (w2,b[1],cin);
  xor (w3,b[2],cin);
  xor (w4,b[3],cin);
  FA_2HA f1(a[0], w1, cin , sum[0] ,c0);
  FA_2HA f2(a[1], w2, c0 , sum[1] ,c1);
  FA_2HA f3(a[2], w3, c1 , sum[2] ,c2);
  FA_2HA f4(a[3], w4, c2 , sum[3] ,cout);
endmodule







