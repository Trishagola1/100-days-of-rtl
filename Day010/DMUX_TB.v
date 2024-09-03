`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2024 22:11:20
// Design Name: 
// Module Name: DMUX_TB
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


module DMUX_TB();
reg in,s0,s1,s2;
wire d0,d1,d2,d3,d4,d5,d6,d7;  
DMUX_1TO_8 tt0(in,s0,s1,s2,d0,d1,d2,d3,d4,d5,d6,d7);
    initial begin       
    #4   in = 1;s2 = 0;s1 = 0;s0 = 0;  //d0
    #4   in = 1;s2 = 0;s1 = 0;s0 = 1;  //d1
    #4   in = 1;s2 = 0;s1 = 1;s0 = 0;  //d2
    #4   in = 1;s2 = 0;s1 = 1;s0 = 1;  //d3
    #4   in = 1;s2 = 1;s1 = 0;s0 = 0;  //d4
    #4   in = 1;s2 = 1;s1 = 0;s0 = 1;  //d5
    #4   in = 1;s2 = 1;s1 = 1;s0 = 0;  //d6
    #4   in = 1;s2 = 1;s1 = 1;s0 = 1;  //d7  
                                        
    end  

endmodule
