`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2024 22:32:18
// Design Name: 
// Module Name: logic_gates _tb
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


module logic_gates_tb();
reg a,b;
wire out_not,out_and,out_nand,out_or,out_nor,out_xor,out_xnor;
logic_gates TT1(a,b,out_not,out_and,out_nand,out_or,out_nor,out_xor,out_xnor);
initial 
 begin
 #5 a=0;b=1;
 #10a=1;b=0;
 #15a=1;b=0;
 #20a=0;b=0;
 end
endmodule
