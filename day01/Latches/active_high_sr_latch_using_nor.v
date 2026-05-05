module active_high_sr_latch_using_nor 
	(input wire s, r, q_n, 
	output reg q_next);
	
	wire [2:0] state;
	state = {s, r};
	initial begin 
		casex(state) 
			3'b00x: q_next = q_n;
			3'b01x: q_next = 1'b0;
			3'b10x: q_next = 1'b1;
			3'b11x: q_next = 1'bx;
		endcase
	end
endmodule

