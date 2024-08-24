`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2024 23:05:23
// Design Name: 
// Module Name: half_tb
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


module half_tb();
reg a,b;
wire diff,borrow;
half_subtactor HS1 (a,b,diff,borrow);
initial 
begin
   #10a=1'b0; b=1'b0;
   #10a=1'b0 ; b=1'b1;
   #10a=1'b1 ; b=1'b0;
   #10a=1'b1 ; b=1'b1;
   end
endmodule
