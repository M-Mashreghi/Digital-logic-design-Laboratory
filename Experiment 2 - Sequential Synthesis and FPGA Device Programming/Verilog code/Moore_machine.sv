
`timescale 1 ns/1ns
module Moore_machine(input clk ,rst , SerIn , clk_en , Co , output reg inc_cnt , rst_cnt , SerOutValid ,output SerOut );
   reg [2:0] ps , ns;
   parameter [2:0] A = 0 ,B = 1 , C = 2 , D = 3 , E = 4 ;
  always @(clk_en , ps, SerIn , Co) begin 
      ns = A ;
      rst_cnt = 0;
      inc_cnt = 0;
      SerOutValid = 0;

      case(ps)
          A: ns = clk_en ? (SerIn? B : A) : A; 

          B: ns = clk_en ? (SerIn? B : C) : B;

          C: ns = clk_en ? (SerIn? D : A) : C;

          D: begin ns = clk_en ? (SerIn? E : D) : D ; rst_cnt =1 ; end

          E: begin ns = Co ? A : E ; inc_cnt = 1 ; SerOutValid = 1 ;end

          default : ns = A;
      endcase
  end 
  
  always @(posedge clk , posedge rst)begin 
      if(rst)
        ps <= A;
      else 
        ps <= ns;
  end

  assign SerOut = (ps==E) ? SerIn : 1'bz;
endmodule 






