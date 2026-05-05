module tb_diagonal_number_pattern;
	integer i,j; 
	integer N = 5;
	
	initial begin 
		$display("---------------------------------------------------------------------------------------------------------");
		
		$display("Diagonal Number Generation: ");
		
		for(i = 1; i <= N; i = i + 1) begin
			for(j = 1; j <= N; j = j + 1) begin
				if(i == j)	$write("%0d", i);
				
				else $write(" ");
			end
		$display("");
		end
		$display("---------------------------------------------------------------------------------------------------------");
		$finish;
	end

endmodule

