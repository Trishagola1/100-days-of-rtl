`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2024 21:38:52
// Design Name: 
// Module Name: Decoder
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


module Decoder(A,Z );
input[3:0]A;
output reg[15:0]Z;
   always @ (A)begin  
    case (A)  
       //  8421      
        4'b0000: Z= 16'b0000000000000001;  
        4'b0001: Z= 16'b0000000000000010; 
        4'b0010: Z= 16'b0000000000000100; 
        4'b0011: Z= 16'b0000000000001000; 
        4'b0100: Z= 16'b0000000000010000; 
        4'b0101: Z= 16'b0000000000100000; 
        4'b0110: Z= 16'b0000000001000000; 
        4'b0111: Z= 16'b0000000010000000; 
        4'b1000: Z= 16'b0000000100000000; 
        4'b1001: Z= 16'b0000001000000000; 
        4'b1010: Z= 16'b0000010000000000; 
        4'b1011: Z= 16'b0000100000000000; 
        4'b1100: Z= 16'b0001000000000000; 
        4'b1101: Z= 16'b0010000000000000; 
        4'b1110: Z= 16'b0100000000000000; 
        4'b1111: Z= 16'b1000000000000000; 
        default: Z= 16'bxxxxxxxxxxxxxxxx; 
        endcase
   end
endmodule
