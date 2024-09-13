`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2024 21:31:19
// Design Name: 
// Module Name: SIPO_TB
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


module SIPO_TB();    
  reg data_in;
  reg clk;  
  wire [3:0] data_out;  
  SIPO SR1(data_in,clk,data_out);
    always #5 clk=~clk;
    initial begin  
      $monitor ($time,"clk=%0b,data_in=%0b,data_out=%0b", clk,data_in,data_out);
        clk = 0;  data_in = 0;    
        #10 data_in = 1'b1 ;
        #10 data_in = 1'b0;
        #10 data_in = 1'b1;
        #10 data_in = 1'b0;
        #10 data_in = 1'b1; 
        #30 $finish;  
    end   
endmodule
