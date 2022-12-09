module counter10(input clk_EN , clk ,rst, inc_cnt , rst_cnt ,output [3:0] Count_out , output Co );
  reg [3:0]Count;
  always @(posedge clk  , posedge rst) begin
    if(rst) Count <= 4'd0 ;
    else if(clk_EN && rst_cnt) Count <= 4'd5;
    else if(clk_EN && inc_cnt) Count <= Count + 1  ;
  end
  
  assign Count_out = Count;
  assign Co = &Count;
  
endmodule
