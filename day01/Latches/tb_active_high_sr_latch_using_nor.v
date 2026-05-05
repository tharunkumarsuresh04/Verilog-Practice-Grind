module tb_active_high_sr_latch_using_nor;
	reg s, r, q_n; 
	wire q_next;
	
	active_high_sr_latch_using_nor uut(.s(s), .r(r), .q_n(q_n), .q_next(q_next));	

	initial begin 
		$monitor("Time = %0t | s = %b | r = %b | q_n = %b | q_next = %b", $time, s, r, q_n, q_next);
		
	end
	
	initial begin 

		$dumpfile("activehighsrlatch.vcd");
		$dumpvars(0, tb_active_high_sr_latch_using_nor);	

	end

	initial begin
		s = 1'b0; r = 1'b0; q_n = 1'b0; 
		#5 s = 1'b0; r = 1'b0; q_n = 1'b1; 
		#5 s = 1'b0; r = 1'b1; q_n = 1'b0;
		#5 s = 1'b0; r = 1'b1; q_n = 1'b1;		
		#5 s = 1'b1; r = 1'b0; q_n = 1'b0; 
		#5 s = 1'b1; r = 1'b0; q_n = 1'b1;
		#5 s = 1'b1; r = 1'b1; q_n = 1'b0;
		#5 s = 1'b1; r = 1'b1; q_n = 1'b1;
		
		#10 $finish;
	end
endmodule
