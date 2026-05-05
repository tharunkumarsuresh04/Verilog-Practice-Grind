module tb_inverted_pyramid_pattern;

	integer i, j, k;
	integer rows = 5;

	initial begin

		$display("-------------------------------------------------------------------------------------------");
		
		$display ("Inverted Pyramid Pattern Generation: ");

		for(i = rows; i >= 1; i = i - 1) begin
			for(j = 1; j <= (rows - i); j = j + 1) begin
				$write("  ");
			end
			for (k = 1; k <= (2 * i - 1); k = k + 1) begin
				$write("* "); 
			end
			$display("");

		end
		$display("-------------------------------------------------------------------------------------------");
		$finish;
	end
	initial begin
		$dumpfile("invertedpyramidpattern.vcd");
		$dumpvars(0, tb_inverted_pyramid_pattern);
	end
endmodule	
