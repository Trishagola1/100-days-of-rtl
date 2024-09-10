`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 23:42:09
// Design Name: 
// Module Name: J_K_FF_TB
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


module J_K_FF_TB();
     reg j,k,clk;
  wire q,qbar;
  J_K_FF TT0(q,qbar,clk,j,k);
   initial 
    begin
    forever
    begin
    clk=0;
    #5
    clk=1;
    #5
    clk=0;
    end
    end
    initial
    begin
   #20; j=0;k=0;
   #20; j=1;k=0;
   #20; j=0;k=1;
   #20; j=1;k=1; 
    $finish();
    end  

endmodule
