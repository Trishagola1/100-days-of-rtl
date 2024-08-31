`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2024 21:39:45
// Design Name: 
// Module Name: Decoder_TB
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


module Decoder_TB();
reg[3:0]A;
wire[15:0]Z;
Decoder D0 (A,Z );
initial
begin
$monitor($time ,"A = %0b, Z = %0b", A, Z);  
        
    #2 A= 4'b0000;  
    #2 A= 4'b0001; 
    #2 A= 4'b0010; 
    #2 A= 4'b0011; 
    #2 A= 4'b0100; 
    #2 A= 4'b0101; 
    #2 A= 4'b0110; 
    #2 A= 4'b0111; 
    #2 A= 4'b1000; 
    #2 A= 4'b1001; 
    #2 A= 4'b1010; 
    #2 A= 4'b1011; 
    #2 A= 4'b1100; 
    #2 A= 4'b1101; 
    #2 A= 4'b1110; 
    #2 A= 4'b1111;

end
endmodule
