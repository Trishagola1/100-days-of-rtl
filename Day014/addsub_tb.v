`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2024 10:57:04
// Design Name: 
// Module Name: addsub_tb
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


module addsub_tb();
  reg [3:0]a,b;
  reg cin;
  wire [3:0]sum;
  wire cout;
  addsub AS0 (a,b,cin,sum,cout);
  initial 
    begin
      $monitor ($time," a=%0d,b=%0d, sum=%0d,cout=%0d,cin=%0d",a,b,sum,cout,cin );
     #10 a=4'd1010;b=4'd1010;cin=0;
     #10 a=4'd1110;b=4'd1011;
     #10 a=4'd1000;b=4'd0010;
     #10 a=4'd1111;b=4'd0000;
     
     
       cin=1;
       #10 a=4'd1010;b=4'd1010;
       #10 a=4'd1011;b=4'd1001;
       #10 a=4'd1110;b=4'd1010;
       #10 a=4'd0010;b=4'd1110;
       
       $finish;
end
endmodule