`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2024 12:23:43
// Design Name: 
// Module Name: EX3_to_bcd
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


module EX3_to_bcd(excess3,bcd);
    input [3:0] excess3;
    output reg [3:0] bcd ;  
    always @(*) begin 
    if (excess3<3)
    begin
    bcd=4'bx;
    end
    else 
    bcd = excess3  - 4'b0011;
    end
    endmodule

   
