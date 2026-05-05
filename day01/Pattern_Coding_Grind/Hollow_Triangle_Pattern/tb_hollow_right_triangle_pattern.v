
module tb_hollow_right_triangle_pattern;
	integer i, j;
	integer rows = 5;

	initial begin
		$display("--------------------------------------------------------------------------------");
		$display("Hollow Triangle Pattern Generation: ");
		
		for(i = 1; i <= rows; i = i + 1) begin
			for(j = 1; j <= i; j = j + 1) begin
				if(j == 1 || i == rows || i == j) $write("* ");
				else 	$write("  "); 
			end
			$display("");
		end
		$display("--------------------------------------------------------------------------------");
		$finish;
	end
endmodule
