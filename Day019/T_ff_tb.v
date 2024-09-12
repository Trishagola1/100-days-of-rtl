`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2024 22:42:32
// Design Name: 
// Module Name: T_ff_tb
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


module T_ff_tb();
reg T,clk,rst;
wire q;
 T_ff T0(q,T,clk,rst);
  initial begin
        clk = 0;
        rst= 0;
        T = 0;
     #15;
        rst = 1;
     #15;
        T = 1;
     #15;
        T = 0;
     #15;
         T= 1;
     #5;
            T = 0;
      #5;
      end
          
   always
   #5 clk=~clk;
     endmodule
