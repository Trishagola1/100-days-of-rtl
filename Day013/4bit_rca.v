`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2024 19:45:27
// Design Name: 
// Module Name: 4bit_rca
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

module bit_rca(sum,c4,a,b,cin);
output [3:0]sum;
output c4;
input [3:0]a,b;
input cin;
wire carry_1,carry_2, carry_3;
FA_2HA f1 (a[0], b[0], cin , sum[0] ,carry_1);
FA_2HA f2 (a[1], b[1], carry_1 , sum[1] ,carry_2);
FA_2HA f3 (a[2], b[2], carry_2 , sum[2] ,carry_3);
FA_2HA f4 (a[3], b[3], carry_3 , sum[3] ,c4);

endmodule
