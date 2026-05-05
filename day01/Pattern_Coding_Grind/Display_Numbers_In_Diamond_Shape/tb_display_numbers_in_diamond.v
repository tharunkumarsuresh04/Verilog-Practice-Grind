module tb_display_numbers_in_diamond;
	integer i, j, rows = 9, mid, V;
	
	initial begin
		mid =  (rows + 1) / 2;
		$display("----------------------------------------------------------------------------------------------------------------------------------------");
		$display("Display Numbers In Diamond Shape: ");
		
		for(i = 1; i <= rows; i = i + 1) begin
			if(i <= mid) V = i;
			else V = (2 * mid) - i;
			
			for(j = 1; j <= mid - V; j = j + 1) begin
				$write(" ");
			end

			for (j = 1; j <= V; j = j + 1) begin
				$write("%0d ", V);
			end

			$display("");
		end
		$display("----------------------------------------------------------------------------------------------------------------------------------------");
		$finish;
	end
endmodule
