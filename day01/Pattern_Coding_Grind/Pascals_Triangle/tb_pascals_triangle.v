module tb_pascals_triangle;
	integer i,j,k,val;
	integer N = 10;
		
	initial begin 
		$dumpfile("pascalstriangle.vcd");
		$dumpvars(0, tb_pascals_triangle);
	end

	initial begin
		$display("------------------------------------------------------------------------------------------------------");
		$display("Pascals Triangle Generation: ");
		
		for(i = 0; i <= N; i = i + 1) begin 
			val = 1; 
			for (j = 0; j <= N - i; j = j + 1) 
				$write(" "); 

			for(k = 0; k <= i; k = k + 1) begin 
				$write(" %0d", val);
				val = val * (i - k) / (k + 1);
			end
			$display("");
		end
		$display("------------------------------------------------------------------------------------------------------");
		$finish;
	end
endmodule
