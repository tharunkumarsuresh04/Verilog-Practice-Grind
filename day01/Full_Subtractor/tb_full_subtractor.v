`timescale 1ns/1ps

module tb_full_subtractor;

reg a, b, bin;

wire difference_gl, difference_df, difference_beh, borrow_out_gl, borrow_out_df, borrow_out_beh;

full_subtractor_gatelevel dut_gl (.a(a), .b(b), .bin(bin), .difference_gl(difference_gl), .borrow_out_gl(borrow_out_gl));
full_subtractor_dataflow dut_df (.a(a), .b(b), .bin(bin), .difference_df(difference_df), .borrow_out_df(borrow_out_df));
full_subtractor_behavioral dut_beh (.a(a), .b(b), .bin(bin), .difference_beh(difference_beh), .borrow_out_beh(borrow_out_beh));
initial begin 

$dumpfile ("fullsubtractor.vcd");

$dumpvars(0);

end

initial begin 
$display("=====================================================================================================================");

$display("++++++++++++++++++++++++++++++++++++++++++++++Full Subtractor Result+++++++++++++++++++++++++++++++++++++++++++++++++");

$display("=====================================================================================================================");

$monitor("Time = %0t | a = %b | b = %b | bin = %b | difference_gl = %b | borrow_out_gl = %b | difference_df = %b | borrow_out_df = %b | difference_beh = %b | borrow_out_beh = %b", $time, a, b, bin, difference_gl, borrow_out_gl, difference_df, borrow_out_df, difference_beh, borrow_out_beh);


end

initial begin 

a = 1'b0; b = 1'b0; bin = 1'b0;

#10 a = 1'b0; b = 1'b0; bin = 1'b1;

#10 a = 1'b0; b = 1'b1; bin = 1'b0;

#10 a = 1'b0; b = 1'b1; bin = 1'b1;

#10 a = 1'b1; b = 1'b0; bin = 1'b0; 

#10 a = 1'b1; b = 1'b0; bin = 1'b1;

#10 a = 1'b1; b = 1'b1; bin = 1'b0;

#10 a = 1'b1; b = 1'b1; bin = 1'b1;

#10 a = 1'b0; b = 1'b0; bin = 1'b0;

#10 a = 1'b0; b = 1'b0; bin = 1'b1;

#10 a = 1'b0; b = 1'b1; bin = 1'b0;

#10 a = 1'b0; b = 1'b1; bin = 1'b1;

#10 a = 1'b1; b = 1'b0; bin = 1'b0;

#10 a = 1'b1; b = 1'b0; bin = 1'b1;

#10 a = 1'b1; b = 1'b1; bin = 1'b0;

#10 a = 1'b1; b = 1'b1; bin = 1'b1;

#50 $finish;

end

endmodule

