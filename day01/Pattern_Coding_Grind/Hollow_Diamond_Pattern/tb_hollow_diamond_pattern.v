module tb_hollow_diamond_pattern;

	integer i, j;
	integer rows = 5;
	integer mid_val;

	function integer abs (input integer value);
		abs = (value < 0) ? -value : value;
	endfunction


	initial begin 
		mid_val = (rows + 1) / 2; // Note: '/' operator will round off to the nearest integer value
		$display("-----------------------------------------------------------------------------------------------");
		$display("Hollow Diamond Pattern Generation: ");
		
		for(i = 1; i <= rows; i = i + 1) begin
			for (j = 1; j <= rows; j = j + 1) begin 
				if(abs(mid_val - i) + abs(mid_val - j) == mid_val - 1)	$write("*");
				else 	$write(" ");
			end
		$display("");
		end
	$display("-----------------------------------------------------------------------------------------------");
	$finish;
	end 
endmodule
