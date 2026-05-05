module tb_floyds_alphabet_pattern;
	integer i, j;
	integer N = 5; 
	
	integer char = 65;
	initial begin
	
		$display("---------------------------------------------------------------------------------------------------------------------");
		$display("Floyd Alphabet Pattern Generation: ");
		
		for(i = 1; i <= N; i = i + 1) begin
			for(j = 1; j <= i; j = j + 1) begin 
				$write("%c ", char);
				char = char + 1;
			end
			$display("");
		end
		$display("---------------------------------------------------------------------------------------------------------------------");
		$finish;
	end
endmodule
