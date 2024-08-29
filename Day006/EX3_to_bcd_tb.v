`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2024 12:24:31
// Design Name: 
// Module Name: EX3_to_bcd_tb
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


module EX3_to_bcd_tb();
reg [3:0]excess3;
wire [3:0]bcd;
EX3_to_bcd AA(excess3,bcd);
initial 
begin
$monitor ($time,"excess3=%0b --> bcd=%0b",excess3,bcd);
#5 excess3 = 0000;
#5 excess3 = 0001;
#5 excess3 = 0010;
#5 excess3 = 0011;
#5 excess3 = 0100;
#5 excess3 = 0101;
#5 excess3 = 0110;
#5 excess3 = 0111;
#5 excess3 = 1000; 
 end
endmodule
