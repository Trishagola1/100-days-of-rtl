`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2024 18:48:18
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

module FA_2HA(a, b, cin , sum ,carry);
input a,b ,cin;
output  sum,carry;
wire w1,w2,w3;
half_adder H1(.a(a),.b(b),.sum(w1),.carry(w2));
half_adder H2(.a(w1),.b(cin),.sum(sum),.carry(w3));
or o1(carry, w2,w3);

endmodule

module half_adder(a, b, sum ,carry);
input a,b;
output sum, carry;
assign carry = a&b;
assign sum = a^b;
endmodule

