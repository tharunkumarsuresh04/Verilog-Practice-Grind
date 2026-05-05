module half_adder_using_mux (
	input wire a, 
	input wire b, 
	output wire sum,
	output wire cout
);
	
	assign sum = (b) ? ~a : a;
	assign cout = (b) ? a : 0;

endmodule
