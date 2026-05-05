module tb_ha_df;
	reg a_df, b_df; 
	wire sum_df, carry_df;

	ha_df uut (.a_df(a_df), .b_df(b_df), .sum_df(sum_df), .carry_df(carry_df));
	
	initial begin
		$display("---------------------------------------------------------------------------------------------");
		$display("Half Adder Testbench: ");
		$display("---------------------------------------------------------------------------------------------");

		$monitor("Time = %0t | a_df = %b | b_df = %b | sum_df = %b | carry_df = %b", $time, a_df, b_df, sum_df, carry_df);
	end
	
	initial begin
		$dumpfile("HalfAdderDF.vcd");
		$dumpvars(0, tb_ha_df);
	end
	
	initial begin
		a_df = 1'b0; b_df = 1'b0; 
		
		#10; 
		a_df = 1'b0; b_df = 1'b1; 
		#10; 
		a_df = 1'b1; b_df = 1'b0;
		#10; 
		a_df = 1'b1; b_df = 1'b1;

		#60; 
		$finish;
	end

endmodule
	
