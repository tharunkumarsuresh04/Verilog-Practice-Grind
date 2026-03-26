module tb_basic_gates;
reg a, b;
wire and_out, or_out, not_out1,not_out2,  xor_out, nand_out, nor_out, xnor_out;

basic_gates DUT (.a(a), .b(b), .and_out(and_out), .or_out(or_out), .not_out1(not_out1), .not_out2(not_out2), .xor_out(xor_out), .nand_out(nand_out), .nor_out(nor_out), .xnor_out(xnor_out));

initial begin
  $dumpfile("basicgates.vcd");
  $dumpvars(0, tb_basic_gates);
end

initial begin 
  $display ("========================================================================================================");
  $display ("+++++++++++++++++++++++++++++++++++++++++Basic Gates Results++++++++++++++++++++++++++++++++++++++++++++");
  $display ("========================================================================================================");

  $monitor ("Time = %0t | a = %b | b = %b | and_out = %b | or_out = %b | not_out1 = %b | not_out2 = %b | xor_out = %b | nand_out = %b | nor_out = %b | xnor_out = %b", $time, a, b, and_out, or_out, not_out1, not_out2, xor_out, nand_out, nor_out, xnor_out);

end


initial begin 
  a = 1'b0; b = 1'b0;
  #10 a = 1'b0; b = 1'b1;
  #10 a = 1'b1; b = 1'b0; 
  #10 a = 1'b1; b = 1'b1;
  #20 $finish;
end 

endmodule
