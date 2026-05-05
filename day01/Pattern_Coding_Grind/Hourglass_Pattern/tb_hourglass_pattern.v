module tb_hour_glass_pattern;
	integer i, j, k;
	
	integer N = 5;
	
	initial begin
		$display("----------------------------------------------------------------------------------------------------------------------------------");

		$display("Hour Glass Pattern Generation: ");
		
		for(i = N - 1; i >= 1; i = i - 1) begin
			for(j = 1; j <= (N - i); j = j + 1) begin
				$write(" ");
			end
			for(k = 1; k <= (2 * i - 1); k = k + 1) begin
				$write("*");
			end
			$display("");
		end
		
			

		for(i = 2; i <= N - 1; i = i + 1) begin 
			for(j = 1; j <= N - i; j = j + 1) begin
				$write(" ");
			end
			for(k = 1; k <= (2 * i - 1); k = k + 1) begin
				$write("*");

			end
			$display("");
		end

		$display("-----------------------------------------------------------------------------------------------------------------------------------");

		$finish;

	end

	initial begin
		$dumpfile("Hourglasspattern.vcd");
		$dumpvars(0, tb_hour_glass_pattern);
	end
endmodule	
