module ha_gl(
	input wire a_gl,
	input wire b_gl,
	output wire sum_gl,
       	output wire carry_gl
);
	xor x1(sum_gl, a_gl, b_gl);
	and a1(carry_gl, a_gl, b_gl);
endmodule
