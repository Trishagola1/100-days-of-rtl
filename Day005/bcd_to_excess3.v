`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2024 15:51:42
// Design Name: 
// Module Name: bcd_to_excess3
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


module bcd_to_excess3(bcd,excess3);
    input [3:0] bcd;
    output reg [3:0] excess3 ;  
    always @(*) begin 
 excess3 = bcd  + 4'b0011;
 end
endmodule
