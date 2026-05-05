module tb_binary_checker_board;
	integer i, j;
	integer n = 9;
	
	initial begin 
		$display("--------------------------------------------------------------------------------------------------------");
		$display("Binary Checker Board:: ");
		
	end

	initial begin 
		$dumpfile("BinaryCheckerBoard.vcd");
		$dumpvars(0, tb_binary_checker_board);
	end
	
	initial begin 
		for(i = 1; i<= n; i = i + 1) begin
			for(j = 1; j <= n; j = j + 1) begin 
				if ((i + j) % 2 == 0)	$write("* ");			

				else	$write("  ");
			end
			$display("");
		end
		$display("---------------------------------------------------------------------------------------------------------");
		$finish;
	end
endmodule
