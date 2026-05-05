module ha_df(
	input wire a_df,
	input wire b_df, 
	output wire sum_df, 
	output wire carry_df
);

	assign sum_df = a_df ^ b_df;
	assign carry_df = a_df & b_df;

endmodule


module ha_gl(
	input wire a_gl,
	input wire b_gl,
	output wire sum_gl,
       	output wire carry_gl
);
	xor x1(sum_gl, a_gl, b_gl);
	and a1(carry_gl, a_gl, b_gl);
endmodule

module ha_beh (
	input wire a_beh,
	input wire b_beh,
	output wire sum_beh,
	output wire carry_beh
);
	always @(a_beh or b_beh) begin
		sum_beh = a_beh ^ b_beh;
		carry_beh = a_beh & b_beh;
	end
endmodule

