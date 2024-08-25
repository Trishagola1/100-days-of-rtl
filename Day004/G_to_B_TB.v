`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
module G_to_B_TB();
reg [3:0]Gray;
wire [3:0]Binary;
 gray_to_binary BG00(Gray,Binary);
 
 initial
 begin
 $monitor($time,"Gray=%0b--> Binary=%0b",Gray,Binary);
 #5  Gray = 4'b1010;
 #15 Gray = 4'b1011;
 #25 Gray = 4'b1100;
 #35 Gray = 4'b1101;
 end
endmodule
