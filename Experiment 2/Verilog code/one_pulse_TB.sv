`timescale 1 ns/1ns
module one_pulse_tb;
  reg clkPB , clk , rst ;
  wire clk_EN;
  wire [1:0]state;
 OnePulse must( clk , rst, clkPB, clk_EN);
  initial begin 
    #6
    clkPB = 1'b0;
    rst = 1'b1;
    clk = 1'b0;
  end
  initial #15 rst = 1'b0;
  always #13  clk = ~clk;
  always #50 clkPB = ~clkPB;
  initial begin 
    #1000
  $stop; 
  end
endmodule 

