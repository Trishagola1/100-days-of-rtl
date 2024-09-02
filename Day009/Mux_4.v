`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2024 22:09:47
// Design Name: 
// Module Name: Mux_4
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


module Mux_4(s0,s1,a0,a1,a2,a3,y);
    input  s0,s1,a0,a1,a2,a3;
    output reg y;
    always @(*)
    begin
    case({s1,s0})
    2'b00 : y=a0;
    2'b01 : y=a1;
    2'b10 : y=a2;
    2'b11 : y=a3;
    endcase
    end
    endmodule
