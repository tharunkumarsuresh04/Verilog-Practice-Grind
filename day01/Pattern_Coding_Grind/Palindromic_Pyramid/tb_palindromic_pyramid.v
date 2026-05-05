module tb_palindromic_pyramid;
	integer i, j, k;
	integer n = 9;

	initial begin 
		$display("----------------------------------------------------------------------------------------------------------------------------------------------");

		$display("Palindromic Pyramid Pattern Generator: ");
		for (i = 1; i <= n; i = i + 1) begin 
			for (j = 1; j <= n - i; j = j + 1) begin 
				$write(" ");
			end
			for (j = 1; j <= i; j = j + 1) begin 
				$write ("%0d", j);
			end
			for(k = i - 1; k >= 1 ; k = k - 1) begin 
				$write("%0d", k);	
			end
			$display("");

		end		
		$display("----------------------------------------------------------------------------------------------------------------------------------------------");
		$finish;
	end

endmodule
	
	
 
