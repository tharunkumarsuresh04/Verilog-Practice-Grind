module tb_plus_pattern;

	integer i, j;
	integer rows = 5;
	integer mid; 


	initial begin
		mid = (rows + 1) / 2;
		$display("----------------------------------------------------------------------------------------------------------------");
		$display("Plus Pattern Generation: ");
		
		for(i = 1; i <= rows; i = i + 1) begin
			for(j = 1; j <= rows; j = j + 1) begin
				if(i == mid || j == mid) $write("* "); 
				else $write("  ");
			end
			$display("");
		end
		$display("----------------------------------------------------------------------------------------------------------------");
		$finish; 
	end
endmodule
