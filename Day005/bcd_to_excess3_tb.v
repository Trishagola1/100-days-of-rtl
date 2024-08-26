`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2024 15:52:11
// Design Name: 
// Module Name: bcd_to_excess3_tb
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


module bcd_to_excess3_tb();
reg [3:0]bcd;
wire [3:0]excess3;
bcd_to_excess3 bcd00(bcd,excess3);
initial 
begin
$monitor ($time,"bcd=%0b --> excess33=%0b", bcd,excess3);
#2 bcd = 0000;
#2 bcd = 0001;
#2 bcd = 0010;
#2 bcd = 0011;
#2 bcd = 0100;
#2 bcd = 0101;
#2 bcd = 0110;
#2 bcd = 0111;
#2 bcd = 1000; 
 end
endmodule

