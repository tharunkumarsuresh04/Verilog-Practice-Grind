module tb_fa;
  reg a, b, cin;
  wire sum, carry_out;

  fa UUT (.a(a), .b(b), .cin(cin), .sum(sum), .carry_out(carry_out));

  initial begin
    $dumpfile("fulladder.vcd");

    $dumpvars(0, tb_fa);

    $display("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
    $display("+++++++++++++++++++++++++++++++++++Full-Adder Simulation+++++++++++++++++++++++++++++++++++");
    $display("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");

    $monitor("Time = %0t | a = %b | b = %b | cin = %b | sum = %b | carry_out = %b", $time, a, b, cin, sum, carry_out);
	
	a = 1'b0; b = 1'b0; cin = 1'b0;
	#10 a = 1'b0; b = 1'b0; cin = 1'b1;
	#10 a = 1'b0; b = 1'b1; cin = 1'b0;
	#10 a = 1'b0; b = 1'b1; cin = 1'b1;
	#10 a = 1'b1; b = 1'b0; cin = 1'b0;
	#10 a = 1'b1; b = 1'b0; cin = 1'b1;
	#10 a = 1'b1; b = 1'b1; cin = 1'b0;
	#10 a = 1'b1; b = 1'b1; cin = 1'b1;

	#30 $finish;
    end

endmodule
