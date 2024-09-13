`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2024 21:30:51
// Design Name: 
// Module Name: SIPO
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


module SIPO(data_in,clk,data_out);
  input data_in;
  input clk;
  output reg [3:0]data_out;
  always @(posedge clk )
    begin
      data_out[3]<= data_in;
      data_out[2]<=data_out[3];
      data_out[1]<=data_out[2];
      data_out[0]<=data_out[1];
    end 
endmodule
