module tb_mirrored_right_triangle;
	integer i, j, k, T;
 	integer N = 5;
	initial begin
		$display("------------------------------------------------------------------------------------------------");
		$display("Mirrored Right Triangle Generation: ");
		
		for(i = 1; i < N; i = i + 1) begin 
			T = N - i;
			for (j = 1; j <= N; j = j + 1) begin
				if (j <= T) $write(" ");
				else $write("*");
			end
			$display("");
		end
		$display("------------------------------------------------------------------------------------------------");
		$finish;
	end
endmodule
