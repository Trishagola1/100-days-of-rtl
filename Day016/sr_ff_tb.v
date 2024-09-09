`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2024 22:10:59
// Design Name: 
// Module Name: sr_ff_tb
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


module sr_ff_tb();
    reg s,r,clk;
    wire q,qbar;
sr_ff tt0 (clk,q,qbar,s,r);
    initial
      begin
    forever
      begin
  #5  clk=0;
  #5 clk=1;
  end
  end   
    initial
      begin
  #10  s=0;r=0;
  #10  s=0;r=1;
  #10  s=1;r=0;
  #10  s=1;r=1;
    end
endmodule

