module two_four_decoder (
	input wire a, input b, 
	output [3:0]d
);
	assign d[0] = ~a & ~b;
	assign d[1] = ~a & b;
	assign d[2] = a & ~b;
	assign d[3] = a & b;

endmodule
