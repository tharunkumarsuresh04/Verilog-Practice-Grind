module tb_ripple_carry_adder;
	parameter W8 = 8;
	parameter W16 = 16; 

	reg[W8 - 1: 0] a8, b8;
	reg cin8;
	wire [W8  - 1: 0] sum8, 
	cout8;

	reg[W16 - 1 : 0] a16, b16;
	reg cin16;
	wire [W16 - 1: 0] sum16;
	wire cout16;
	
	ripple_carry_adder uut8 (.
endmodule
