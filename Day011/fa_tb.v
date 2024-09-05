`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2024 19:35:39
// Design Name: 
// Module Name: fa_tb
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


module fa_tb();
    reg a,
    b,
    cin;
wire sum,carry;
FA_2HA TT0 (a,b,cin,sum,carry);
initial
begin

$monitor($time ,"a=%0b , b=%0b , cin=%0b , sum=%b ,carry=%0b" ,a,b,cin,sum,carry);
       a= 1'b0 ; b= 1'b0 ; cin= 1'b0;
#100   a= 1'b0 ; b= 1'b0 ; cin= 1'b1;
#100   a= 1'b0 ; b= 1'b1 ; cin= 1'b0;
#100   a= 1'b0 ; b= 1'b1 ; cin= 1'b1;
#100   a= 1'b1 ; b= 1'b0 ; cin= 1'b0;
#100   a= 1'b1 ; b= 1'b0 ; cin= 1'b1;
#100  a= 1'b1 ; b= 1'b1 ; cin= 1'b0;
#100   a= 1'b1 ; b= 1'b1 ; cin= 1'b1;
end
endmodule

