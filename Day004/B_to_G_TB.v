`timescale 1ns / 1ps



module B_to_G_TB( );
reg [3:0]Binary;
wire[3:0]Gray;
  Binary_to_Gray BG0 (Binary,Gray);
    initial
    begin
    $monitor($time,"Binary = %0b --> Gray = %0b", Binary, Gray);
   #2  Binary = 4'b1000; 
   #4  Binary = 4'b1100;
   #6  Binary = 4'b1110; 
   #8  Binary = 4'b1111; 
   #10 Binary= 4'b1001;
  end
endmodule
