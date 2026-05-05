module tb_ha_gl;
	reg a_gl, b_gl;
	wire sum_gl, carry_gl;
	
	ha_gl uut (.a_gl(a_gl), .b_gl(b_gl), .sum_gl(sum_gl), .carry_gl(carry_gl));
	initial begin 
		$display("------------------------------------------------------------------------------------------------------------");
		$display("Half Adder Testbench: ");
		$display("----------------------------------------------------------------------------------------------------");
		$monitor("Time = %0t | a_gl = %b | b_gl = %b | sum_gl = %b | carry_gl = %b", $time, a_gl, b_gl, sum_gl, carry_gl);

	end
	
	initial begin
		$dumpfile("HalfAdderGL.vcd");
		$dumpvars(0, tb_ha_gl);
	end
	
	initial begin
		a_gl = 1'b0; b_gl = 1'b0;
		
		#10; 
		a_gl = 1'b0; b_gl = 1'b1;
	
		#10; 
		a_gl = 1'b1; b_gl = 1'b0;
		
		#10;
		a_gl = 1'b1; b_gl = 1'b1;

		#60; 

		$finish;

	end
	
endmodule
