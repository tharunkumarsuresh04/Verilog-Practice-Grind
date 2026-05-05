module tb_zig_zag_pattern;
	integer i, j; 
	integer N = 21;
	
	initial begin
		$display("-------------------------------------------------------------------------------------------------------------------");
		$display("Zig Zag Pattern Generation: ");
		for(i = 1; i <= 3; i = i + 1) begin
			for(j = 1; j <= N; j = j + 1) begin
				if ((i == 1) && (j % 4 == 3))	$write("*");

				else if ((i == 2) && ((j % 2) == 0))	$write("*");
				
				else if ((i == 3) && (j % 4 == 1)) 	$write("*");

				else $write(" ");
			end
			$display("");
		end
		$display("-------------------------------------------------------------------------------------------------------------------");
		$finish;
	end

endmodule
