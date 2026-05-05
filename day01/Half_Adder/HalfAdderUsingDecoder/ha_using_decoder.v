module ha_using_decoder (
	input wire a, 
	input wire b,
	output wire sum, 
	output wire cout
);
	wire[3:0] m;
	
	two_four_decoder uut (.a(a), .b(b), .d(m));
	
	assign sum = m[1] | m[2];
	assign cout = m[3];

endmodule

