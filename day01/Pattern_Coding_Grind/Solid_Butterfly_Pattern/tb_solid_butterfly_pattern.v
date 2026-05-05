module tb_solid_butterfly_pattern;
	integer i,j, V;
	
	parameter N = 5; 
	integer t_rows = 2 * N - 1;
	

	initial begin 
		$display("----------------------------------------------------------------------------------------------------------------");
		
		$display("Solid Butterfly Pattern Generation: ");

		for(i = 1; i <= t_rows; i = i + 1) begin
			
			if(i < N) V = i; 
			else V = 2 * N - i;

			for(j = 1; j <= V; j = j + 1) begin
				$write("* ");
			end

			for(j = 1; j <= (2 * (N - V)); j = j + 1) begin
				$write("  ");
			end
					
			for(j = 1; j <= V; j = j + 1) begin
				$write("* ");
			end
			$display("");	

		end
		$display("----------------------------------------------------------------------------------------------------------------");
		$finish;
	end
endmodule
		
		
