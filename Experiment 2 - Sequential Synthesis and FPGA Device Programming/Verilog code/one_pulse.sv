`timescale 1 ns/1ns
module OnePulse(input clk,rst , clkPB, output clk_EN);
  reg [1:0] ns,ps;
  parameter [2:0] A = 0 ,B = 1 , C = 2  ;
  always @(ps,clkPB) begin 
      ns = A;
      case (ps)
          A : ns = clkPB ? B : A;
          B : ns = C ;
          C : ns = clkPB ? C : A;
          default: ns = A;
      endcase
  end
  assign clk_EN = (ps == B)? 1'b1 :1'b0;
  always @(posedge clk,posedge rst) begin 
    if(rst)
      ps <= A;
    else 
      ps <= ns;
  end
endmodule
