`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2024 22:41:43
// Design Name: 
// Module Name: T_ff
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


module T_ff(q,T,clk,rst);
input T,clk,rst;
output reg q;
always @(posedge clk or negedge rst)
begin
  if (!rst) 
        begin
            q <= 0; 
        end
        else       
        begin
            q <= ~T;
        end
    end
endmodule
