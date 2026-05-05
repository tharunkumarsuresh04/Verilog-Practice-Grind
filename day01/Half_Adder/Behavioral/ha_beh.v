module ha_beh (
	input wire a_beh,
	input wire b_beh,
	output wire sum_beh,
	output wire carry_beh
);
	always @(*) begin
		sum_beh = a_beh ^ b_beh;
		carry_beh = a_beh & b_beh;
	end
endmodule
