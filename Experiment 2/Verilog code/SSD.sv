module SSD(input [3:0] Count_out , output reg[6:0] SSD_output);
  always@(Count_out) begin 
      case(Count_out)
        4'd5 : SSD_output = 7'b0010010; 
        4'd6 : SSD_output = 7'b0000010; 
        4'd7 : SSD_output = 7'b1111000; 
        4'd8 : SSD_output = 7'b0000000; 
        4'd9 : SSD_output = 7'b0010000; 
        4'd10 : SSD_output = 7'b0001000; 
        4'd11 : SSD_output = 7'b0000011; 
        4'd12 : SSD_output = 7'b1000110; 
        4'd13 : SSD_output = 7'b0100001; 
        4'd14 : SSD_output = 7'b0000110; 
        4'd15 : SSD_output = 7'b0001110; 
        default : SSD_output = 7'b1111111;
      endcase
  end
endmodule

