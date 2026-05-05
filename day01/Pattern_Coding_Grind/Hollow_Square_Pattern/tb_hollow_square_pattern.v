module tb_hollow_square_pattern;
	integer i, j; 
	parameter ROWS = 5; 
	
	initial begin 
		$display("----------------------------------------------------------------------------");
		$display("Hollow Square Generation: ");
		
		for (i = 1; i <= ROWS; i = i + 1) begin 
			for (j = 1; j <= ROWS; j = j + 1) begin
				if(i == 1 || i == ROWS || j == 1 || j == ROWS) begin
					$write("* ");
				end else 
					$write(" ");
			end
			$display("");

		end
		$display("----------------------------------------------------------------------------");
		$finish;

	end 
endmodule 

		
