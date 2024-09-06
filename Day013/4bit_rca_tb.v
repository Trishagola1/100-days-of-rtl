`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2024 19:46:04
// Design Name: 
// Module Name: 4bit_rca_tb
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


module bit_rca_tb();  
    reg [3:0] a;
    reg[3:0]b;          
    reg cin;                
    wire [3:0]sum;         
    wire c4;               

  bit_rca tt0 (sum,c4,a,b,cin); 

    initial begin  
        
        $monitor($time ,"a=%0b, b=%0b, cin=%0b , sum=%0b, c4=%0b", a, b, cin, sum, c4);   

#5  a=4'b0000; b=4'b0000; cin =0;
      #5  a=4'b0001; b=4'b0000; cin =1;
      #5  a=4'b1100; b=4'b1100; cin =1;
      #5  a=4'b1100; b=4'b1100; cin =0;
      #5  a=4'b1101; b=4'b1101; cin =1;
      #5  a=4'b0001; b=4'b1000; cin =1;
      #5  a=4'b0000; b=4'b1111; cin =1;
      #5  a=4'b1100; b=4'b1100; cin =0;
      #5  a=4'b0000; b=4'b0111; cin =1;
      #5  a=4'b1100; b=4'b0010; cin =1;

$finish;
end
endmodule
