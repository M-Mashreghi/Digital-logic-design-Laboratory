
`timescale 1 ns/1ns
module moore_machine_tb;
  reg clkPB , clk , rst , SerIn;
  wire SerOutValid,SerOut;
  wire [6:0] SSD;

  OP_moore a(clkPB , clk , rst , SerIn , SerOutValid ,SerOut ,SSD);
  initial begin 
    #2
    clkPB = 1'b0;
    rst = 1'b1;
    clk = 1'b0;
  end
  initial #15 rst = 1'b0;
  always #13  clk = ~clk;
  always #50 clkPB = ~clkPB;
  initial begin 
    SerIn = 1'b0;
    #5

    #100 SerIn = 1'b1;
    #100 SerIn = 1'b0;
    #100 SerIn = 1'b1;
    #100 SerIn = 1'b1;
      repeat (15)
         #100 SerIn = $random ;
    #500
    #100 SerIn = 1'b0;
    #100 SerIn = 1'b1;
    #100 SerIn = 1'b0;
    #100 SerIn = 1'b0;
    #100 SerIn = 1'b1;
    #100 SerIn = 1'b0;
    #100 SerIn = 1'b1;
    #100 SerIn = 1'b1;
      repeat (15)
         #100 SerIn = $random ;
    #500
    #100 SerIn = 1'b1;
    #100 SerIn = 1'b0;
    #100 SerIn = 1'b1;
    #100 SerIn = 1'b1;
      repeat (15)
         #100 SerIn = $random ;
    #500
  $stop;
end
endmodule 

