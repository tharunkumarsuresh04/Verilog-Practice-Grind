module tb_ha_using_decoder;
	reg a, b;
	wire sum, cout;
	
	ha_using_decoder uut (.a(a), .b(b), .sum(sum), .cout(cout));
	
	initial begin
		$monitor("Time = %0t | a = %b | b = %b | sum = %b | cout = %b", $time, a, b, sum, cout);
		
	end
	initial begin
		$dumpfile("HAUsingDecoder.vcd");
		$dumpvars(0, tb_ha_using_decoder);
	end
	
	initial begin 
		a = 1'b0; b = 1'b0; 
		#10; 
		a = 1'b0; b = 1'b1; 
		#10; 
		a = 1'b1; b = 1'b0;
		#10; 
		a = 1'b1; b = 1'b1;
	        #60; 
		$finish;

	end
endmodule
	 

