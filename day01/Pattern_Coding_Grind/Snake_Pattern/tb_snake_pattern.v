module tb_snake_pattern;
	integer i, j;
	integer N = 5;
	
	initial begin 
		$display("------------------------------------------------------------------------------------------------------------------");
		
		$display("Snake Pattern Generation: ");
		
		for(i = 1; i <= N; i = i + 1) begin
			if ((i % 2) == 1) begin 
				for(j = 1; j <= N; j = j + 1)	$write("%2d", (i - 1) * N + j);
			end
			

			else if( (i % 2) == 0) begin
				for(j = N; j >= 1; j = j - 1)	$write("%2d", (i - 1) * N + j);
			end
			

			else begin
				$write(" ");
			end
			$display("");
		end
		
		$display("------------------------------------------------------------------------------------------------------------------");
		$finish;
	end
endmodule
