module Decoder7SegN(DIG, Seg7);
input[2:0] DIG;
output reg [0:6] Seg7;

always @ (DIG) begin
   case (DIG)
	
	0:             Seg7 = 7'b0000001;
	1:             Seg7 = 7'b1001111;
	2:             Seg7 = 7'b0010010;
	3'b011:        Seg7 = 7'b0000110;
	3'b100:        Seg7 = 7'b0001000;
	3'd5:          Seg7 = 7'b0100100;
	3'd6:          Seg7 = 7'b0100000;
	3'h7:          Seg7 = 7'b0001111;
	default:       Seg7 = 7'bzzzzzzz;
	endcase
	end
	endmodule
	