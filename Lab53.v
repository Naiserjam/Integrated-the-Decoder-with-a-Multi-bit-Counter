module Lab53(clk,en,clrn,ud, HEX0, Q0, Q1, Q2);

input clk, en,clrn,ud;
output [0:6] HEX0;
output Q0, Q1, Q2;

wire[2:0] temp;
Lab5 inst_cnt(.clock(clk), .enable(en), .clrn(clrn), .dir(ud), .Q(temp));
Decoder7SegN inst_dec(.DIG(temp), .Seg7(HEX0));

 assign Q0 = temp[0];
 assign Q1 = temp[1];
 assign Q2 = temp[2];
 
endmodule
