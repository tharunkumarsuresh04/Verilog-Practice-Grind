module tb_alphabet_triangle;
	integer i, j, char;
	integer N = 5;
	
	initial begin
		$display("--------------------------------------------------------------------------------------------------------------");
		$display("Alphabet Triangle Generation: ");
		
		for(i = 1; i<= N; i = i + 1) begin
			char = 65 + (i - 1); 
			for(j = 1; j <= i; j = j + 1) begin
				$write("%c ", char);
			end
			$display("");
		end
		$display("--------------------------------------------------------------------------------------------------------------");
		$finish;
	end

endmodule
	
