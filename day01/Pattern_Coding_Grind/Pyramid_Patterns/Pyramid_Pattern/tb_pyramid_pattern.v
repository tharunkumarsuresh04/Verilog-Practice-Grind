module tb_pyramid_pattern;
	integer i,j,k;
	integer N = 5;

	initial begin 
		$display("-------------------------------------------------------------");
		$display("Pyramid Pattern Generation: ");

		for (i = 1; i <= N; i = i + 1) begin 
			for (j = 1; j <= (N - i); j = j + 1) begin 
				$write("  ");
			end
			for (k = 1; k <= (2 * i - 1); k = k + 1) begin
				$write ("* "); 
			end 
			$display("");
		end 
		$display("-------------------------------------------------------------");

		$finish;
	end

	initial begin 
		$dumpfile ("Pyramid pattern.vcd");
		$dumpvars (0, tb_pyramid_pattern);
	end

endmodule
