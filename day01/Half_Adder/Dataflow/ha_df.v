module ha_df(
	input wire a_df,
	input wire b_df, 
	output wire sum_df, 
	output wire carry_df
);

assign sum_df = a_df ^ b_df;
assign carry_df = a_df & b_df;

endmodule
