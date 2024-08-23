`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2024 22:24:08
// Design Name: 
// Module Name: logic_gates
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


module logic_gates(a,b,out_not,out_and,out_nand,out_or,out_nor,out_xor,out_xnor);
input a,b;
output out_not,out_and,out_nand,out_or,out_nor,out_xor,out_xnor;
    not(out_not,a);
    and(out_and,a,b);
    nand(out_nand,a,b);
    or(out_or,a,b);
    nor(out_nor,a,b);
    xor(out_xor,a,b);
    xnor(out_xnor,a,b);
endmodule
