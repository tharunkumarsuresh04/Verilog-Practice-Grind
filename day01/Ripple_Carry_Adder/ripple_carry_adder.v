// Ripple Carry Adder Using Module Instantiation: 
module ripple_carry_adder #(parameter WIDTH = 8)
	(input [WIDTH-1:0] a, b, 
	input cin, 
	output [WIDTH - 1:0] sum, 
	output cout
	
);
	wire [WIDTH : 0] carry;
	assign carry[0] = cin;
	assign carry[WIDTH] = cout;
	genvar i;
	generate 
		for(i = 0; i < WIDTH; i = i + 1) begin : fa_loop
			fa fa_inst (.a(a[i]), .b(b[i]), .cin(carry[i]), .sum(sum[i]), .cout(carry[i+1]));
		end

	endgenerate 
endmodule
	
