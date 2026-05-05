module tb_ha_using_mux;
	reg a, b;
	wire sum, cout;
		
	half_adder_using_mux uut (.a(a), .b(b), .sum(sum), .cout(cout));
	
	initial begin
		$display("------------------------------------------------------------------------------------------------------------");
		$display("Half Adder Using MUX: ");
		$display("------------------------------------------------------------------------------------------------------------");

		$monitor("Time = %0t | a = %b | b = %b | sum = %b | cout = %b", $time, a, b, sum, cout);
	
	end
	
	initial begin
		$dumpfile("HAUsingMUX.vcd");
		$dumpvars(0, tb_ha_using_mux);
	end
	
	initial begin
		a = 1'b0; b = 1'b0; 
		#10; 
		a = 1'b0; b = 1'b1; 
		#10;
		a = 1'b1; b = 1'b0;
		#10; 
		a = 1'b1; b = 1'b1;
	
		#60 $finish;
	end

endmodule
