module Lab52(clk,en,clrn,ud, HEX0);

input clk, en,clrn,ud;
output [0:6] HEX0;

wire[2:0] temp;
Lab5 inst_cnt(.clock(clk), .enable(en), .clrn(clrn), .dir(ud), .Q(temp));
Decoder7SegN inst_dec(.DIG(temp), .HEX(HEX0));

endmodule
