module tb_right_angled_triangle;
integer i, j;
integer rows = 5;

initial begin
	$display("------------------------------------------------------------------------------------");
	$display("Inverted Right angled triangle: ");

	for(i = rows; i >= 1; i = i - 1) begin
		for (j = 1; j <= i; j = j + 1) begin
			$write("*");
		end
		$display("");
	end 
	$display("------------------------------------------------------------------------------------");
	$finish;
end

initial begin
	$dumpfile("inv_right_angled_triangle.vcd");
	$dumpvars (0, tb_right_angled_triangle);
end

endmodule
