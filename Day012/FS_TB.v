`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2024 23:06:01
// Design Name: 
// Module Name: FS_TB
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


module FS_TB();
  reg a, b, cin;
  wire diff,borrow;
FS_2HS ff0(a,b,cin,diff,borrow);
  
initial begin
$monitor($time ,"a=%0b ,b=%0b,cin=%0b,diff=%0b,borrow=%0b,",a,b,cin,diff,borrow);
    a = 0; b = 0; cin = 0; 
 #20   a = 0; b = 0; cin = 1; 
 #30   a = 0; b = 1; cin = 0; 
 #40   a = 0; b = 1; cin = 1; 
 #50   a = 1; b = 0; cin = 0; 
 #60   a = 1; b = 0; cin = 1; 
 #70   a = 1; b = 1; cin = 0; 
 #80   a = 1; b = 1; cin = 1;
 end
endmodule
