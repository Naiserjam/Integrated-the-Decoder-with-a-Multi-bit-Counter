module timer (clk50Mhz, flk);
input clk50Mhz;
output flk;

reg[25:0] Q;

always @ (posedge clk50Mhz)
 begin 
    
	 
	 Q <= Q+1;
	  
end
assign  flk = Q[24];
endmodule
