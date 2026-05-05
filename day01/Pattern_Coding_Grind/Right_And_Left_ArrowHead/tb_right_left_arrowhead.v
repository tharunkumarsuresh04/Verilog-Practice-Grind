module tb_right_left_arrowhead;
	integer i, j, k, V; 
	parameter N = 5; 
	integer t_rows = 2 * N - 1;
	
	initial begin 
		$display("--------------------------------------------------------------------------------------------------------------------");
		$display("Right Left ArrowHead Generation: ");

		for(i = 1; i <= t_rows; i = i + 1) begin	
			V = (i < N) ? i : 2 * N - i;

			for(k = 1; k <= V; k = k + 1) begin
				$write("*");
			end
			for(j = 1; j <= N - V; j = j + 1)begin	
				$write(" ");
			end	
					
			for (k = 1; k <= V; k = k + 1) begin
				$write("*");
			end

			for(j = 1; j <= t_rows / 2;j = j + 1) begin 
				$write("      ");
			end
			       		

		$display("");
		end 
		$display("--------------------------------------------------------------------------------------------------------------------");
		$finish;
	end 

endmodule
