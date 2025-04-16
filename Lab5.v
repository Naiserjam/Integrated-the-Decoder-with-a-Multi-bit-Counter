module Lab5 (clock, enable, clrn,dir, Q);
 
 input clock, enable, clrn, dir;
 output [2:0] Q;
 
 reg[2:0] Q;
 
 always @ (posedge clock, negedge clrn)
 begin 
    if(!clrn)
	 Q <= 0;
	 else
	 if (enable)
	 Q <= Q+1;
end
endmodule
