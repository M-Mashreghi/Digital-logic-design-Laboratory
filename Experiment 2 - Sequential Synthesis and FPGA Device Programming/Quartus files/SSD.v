module SSD(input [3:0] Count_out , output reg[13:0] SSD_output);
  always@(Count_out) begin 
      case(Count_out)
        4'd5 : SSD_output = 14'b10000001000000; 
        4'd6 : SSD_output = 14'b10000001111001; 
        4'd7 : SSD_output = 14'b10000000100100; 
        4'd8 : SSD_output = 14'b10000000110000; 
        4'd9 : SSD_output = 14'b10000000011001; 
        4'd10 : SSD_output = 14'b10000000010010; 
        4'd11 : SSD_output = 14'b10000000000010; 
        4'd12 : SSD_output = 14'b10000001111000; 
        4'd13 : SSD_output = 14'b10000000000000; 
        4'd14 : SSD_output = 14'b10000000010000; 
        4'd15 : SSD_output = 14'b11110011000000; 
        default : SSD_output = 14'b11111111111111;
      endcase
  end
endmodule
