`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2024 15:45:08
// Design Name: 
// Module Name: half_adder_tb
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
module half_adder_tb( );
reg a,b;
wire sum,carry;
half_adder H11(a,b,sum,carry);
 initial 
 begin
 a=0;b=0;
 #10
 a=0;b=1;
 #20
 a=1;b=0;
 #30
 a=1;b=1;
 end
endmodule
