module tb_cross_pattern;
	integer i, j;
	integer rows = 5;
	
	initial begin
		$display("--------------------------------------------------------------------------------------------------------------");
		$display("Cross Pattern Generation: ");

		for(i = 1; i <= rows; i = i + 1) begin
			for(j = 1; j <= rows; j = j + 1) begin
				if (i == j || i + j == rows + 1) $write("* ");
				else $write("  ");
			end
			$display("");
		end
		$display("--------------------------------------------------------------------------------------------------------------");

		$finish;
	end
endmodule
