module tb_floyds_triangle;
	integer i, j, count = 1, rows = 5;
	
	initial begin 
		$display("----------------------------------------------------------------------------------------------------------------");
		$display("Floyd's Triangle Generation: ");
		
		for(i = 1; i <= rows; i = i + 1) begin
			for (j = 1; j <= i; j = j + 1) begin
				$write("%d", count); 
				count = count + 1;
			end
			$display("");
		end
		$display("----------------------------------------------------------------------------------------------------------------");
		$finish;
	end
endmodule
