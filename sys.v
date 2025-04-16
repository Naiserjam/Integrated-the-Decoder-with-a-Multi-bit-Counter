module sys (clk, en, clrn, HEX);
input clk, en, clrn;
output [0:6] HEX;

wire[2:0] temp;

Lab5  inst_cnt(.clock(clk), .enable(en), .clrn(clrn), .Q(temp));
Decoder7SegN inst_decoder(.DIG(temp), .Seg7(HEX));

endmodule
