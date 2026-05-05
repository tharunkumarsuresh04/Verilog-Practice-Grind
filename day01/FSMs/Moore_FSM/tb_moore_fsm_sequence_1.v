module tb_moore_fsm_sequence_one;
	
	parameter T = 20; 
	
	reg clk_no, rst_no, x_in_no, y_no;
	
	wire y;

	moore_fsm_sequence_one_non_overlapping uut (.clk_no(clk_no), .rst_no(rst_no), .x_in_no(x_in_no), .y_no(y_no));

	initial begin 
		clk_no = 0; 
		forever # (T / 2) clk_no = ~clk_no;
	end
	
	task rst_no_dut;
		begin 
			rst_no = 0;
			x_in_no = 0;
			# (T * 2) rst_no = 1;
		end
	endtask

	task drive_bit (input bit_in);
		begin
			@(posedge clk) 
			x = bit_in;
		end
	endtask
	
	task driver_sequence(input [4:0] seq);
		integer i;
		begin 
			for (i = 4; i >= 0; i = i - 1) begin 
				drive_bit(seq[i]);
			end
		end 
	endtask
		
	initial begin 
		$dumpfile("MooreOverlapping1.vcd");
		$dumpvars(0, tb_moore_fsm_sequence_one);
		
		rst_no_dut();

		driver_sequence(5'b11011);

		@(posedge clk);
		if (y == 1'b1)
			 $display("Sequence Detected!"); 
		else
			 $display("Sequence not detected!");


		driver_sequence(3'b011);

		#(T*5); 
		$display("Simulation Finished!");
		$finish;
	end

	always @(posedge clk) begin
		if (y) $display("Y detected at time %0t", $time);
		
	end

endmodule
		 
			
	
 
