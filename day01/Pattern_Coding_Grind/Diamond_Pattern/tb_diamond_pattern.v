module tb_diamond_pattern;
	integer i, j, k;
	parameter ROWS = 5;
	
	initial begin
		$display ("-------------------------------------------------------------------------------------");

		$display("Diamond Pattern Generation: "); // Diamond Pattern = Pyramid Pattern + Inverted Pyramid Pattern Codes :)
		// Pyramid Pattern Code:	

		for(i = 1; i <= ROWS; i = i + 1) begin
			for(j = 1; j <= ROWS - i; j = j + 1) begin
				$write(" ");
			end
			for (k = 1; k <= (2 * i - 1); k = k + 1) begin	
				$write("*");

			end
			$display("");
		end
	
		// Inverted Pyramid Pattern Code: 
		for(i = ROWS- 1; i >= 1; i = i - 1) begin
			for (j = 1; j <= ROWS - i; j = j + 1) begin
				$write(" ");
			end
			for (k = 1; k <= (2 * i - 1); k = k + 1) begin
				$write("*");
			end
			$display("");
		end	
	
		$display ("-------------------------------------------------------------------------------------");
		$finish;
	end
	
	initial begin 
		$dumpfile("DiamondPattern.vcd");;
		$dumpvars(0, tb_diamond_pattern);
	end

endmodule
