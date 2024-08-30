`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2024 21:52:26
// Design Name: 
// Module Name: Encoder_TB
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


module Encoder_TB();
reg[7:0]D;
wire[2:0]Y;
 Encoder EN0 (D,Y);
 initial 
 begin
 $monitor($time ,"D=%0d,Y=%0d",D,Y);
#5 D=128;
#5 D=64;
#5 D=32;
#5 D=16;
#5 D=8;
#5 D=4;
#5 D=2;
#5 D=1;
$finish;
end
endmodule
