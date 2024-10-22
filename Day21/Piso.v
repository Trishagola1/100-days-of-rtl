`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.10.2024 21:18:48
// Design Name: 
// Module Name: Piso
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


module piso(serial_out,clk,d_in,load);
  output reg serial_out;
  input clk;
  input load;
  input [3:0] d_in;
  reg [3:0] q;
  
  initial
    q=4'b0;
  
  always @( posedge clk)
    begin
      if(load)
        q<=d_in;
      else
        begin
          q[3]<=d_in[0];
          q[2]<=q[3];
          q[1]<=q[2];
          q[0]<=q[1];
          serial_out=q[0];
        end      
    end
  
endmodule
  