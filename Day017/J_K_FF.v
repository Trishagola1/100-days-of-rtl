`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.09.2024 23:41:38
// Design Name: 
// Module Name: J_K_FF
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


module J_K_FF(q,qbar,clk,j,k);
  input  j,k,clk;
    output reg q,qbar;
    always@ (posedge clk)
    begin
    case({j,k})
    2'b10:q=1;
    2'b01:q=0;
    2'b11:q=~q;
    2'b00:q = q;
          endcase
    assign qbar=~q;
      end
endmodule
