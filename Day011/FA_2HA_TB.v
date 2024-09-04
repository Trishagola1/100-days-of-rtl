`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2024 21:49:24
// Design Name: 
// Module Name: FA_2HA_TB
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


module FA_2HA_TB();
reg a,b,cin;
wire sum,carry;
FA_2HA TT0 (a,b,cin,sum,carry);
initial
begin
$monitor($time ,"a=%0b , b=%0b , cin=%0b , sum=%b ,carry=%0b" ,a,b,cin,sum,carry);
      a= 1'b0 ; b= 1'b0 ; cin= 1'b0;
#10   a= 1'b0 ; b= 1'b0 ; cin= 1'b1;
#10   a= 1'b0 ; b= 1'b1 ; cin= 1'b0;
#10   a= 1'b0 ; b= 1'b1 ; cin= 1'b1;
#10   a= 1'b1 ; b= 1'b0 ; cin= 1'b0;
#10   a= 1'b1 ; b= 1'b0 ; cin= 1'b1;
#10   a= 1'b1 ; b= 1'b1 ; cin= 1'b0;
#10   a= 1'b1 ; b= 1'b1 ; cin= 1'b1;
end
endmodule