`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2024 21:26:40
// Design Name: 
// Module Name: piso_tb
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


module piso_tb();
  wire serial_out;
  reg clk,load;
  reg [3:0] d_in;
  
  
Piso TT1(serial_out,clk,d_in,load);
  
  
  initial
    begin
      clk=0;
      forever
        #1 clk=~clk;
    end
  
  initial
    begin
      $monitor( $time ,   "clk=%0b, d_in=%0b , load=%0b , serial_out=%0b",clk,d_in,load,serial_out);
      
      d_in = 4'B1011;
      load = 1;
      #10;
      load = 0;
    end
  
endmodule
