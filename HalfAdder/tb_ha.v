`timescale 1ns/1ps

	module tb_ha;
		reg a, b;
		wire sum, carry;

		ha uut(.a(a), .b(b), .sum(sum), .carry(carry));

		initial begin
			$dumpfile("halfadder.vcd");
			$dumpvars(0, tb_ha);

			$monitor("Time = %0t | a = %b | b = %b | sum = %b | carry = %b", $time, a, b, sum, carry);

			$display("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
			$display("+++++++++++++++++++++++++++++++++++++Half-Adder++++++++++++++++++++++++++++++++++++++++++++++");
			$display("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");

			a = 0; b = 0;
			#10 a = 0; b = 1;
			#10 a = 1; b = 0;
			#10 a = 1; b = 1;
			#10 a = 0; b = 0;

			#20 $finish;

		end
	endmodule

