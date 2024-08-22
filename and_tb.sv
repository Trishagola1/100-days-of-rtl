`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2024 13:06:22
// Design Name: 
// Module Name: and_tb
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


module and_tb(

    );
    
    logic a,b;
    logic out;
    gates AA(a,b,out);
    initial
    begin
     a=1;
     b=0;
     #20
     a=1;
     b=1;
     end
     
endmodule
