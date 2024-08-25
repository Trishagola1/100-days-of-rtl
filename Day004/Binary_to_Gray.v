`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2024 00:56:36
// Design Name: 
// Module Name: Binary_to_Gray
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependenc 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Binary_to_Gray(Binary,Gray);
    input [3:0]Binary;
    output [3:0]Gray;
    assign Gray[0]=Binary[1]^Binary[0];
    assign Gray[1]=Binary[2]^Binary[1];
    assign Gray[2]=Binary[3]^Binary[2];
    assign Gray[3]=Binary[3];
endmodule
