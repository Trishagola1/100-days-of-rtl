`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2024 23:27:29
// Design Name: 
// Module Name: gray_to_binary//////
module gray_to_binary(Gray,Binary);
input [3:0]Gray;
output [3:0]Binary;

assign Binary[3]=Gray[3];
assign Binary[2]=Binary[3]^Gray[2];
assign Binary[1]=Binary[2]^Gray[1];
assign Binary[0]=Binary[1]^Gray[0];

endmodule
