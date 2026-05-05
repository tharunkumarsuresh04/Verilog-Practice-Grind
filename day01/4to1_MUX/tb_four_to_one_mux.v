module tb_four_to_one_mux;

reg [3:0] in;
reg [1:0] sel;

wire out;


four_to_one_mux dut_gl (.in(in), .sel(sel), .out_gl(out_gl));

four_to_one_mux_df1 uut_df1 (.in(in), .sel(sel), .out_df1(out_df1));

four_to_one_mux_df2 uut_df2 (.in(in), .sel(sel), .out_df2(out_df2));

four_to_one_mux_beh uut_beh (.in(in),, .sel(sel), .out_beh(out_beh));

initial begin 

$dumpfile ("fourtoonemux.vcd");
$dumpvars (0);

end

initial begin 

$display("====================================================================================================================");
$display("+++++++++++++++++++++++++++++++++++++++++Four to One Mux Result+++++++++++++++++++++++++++++++++++++++++++++++++++++");
$display("====================================================================================================================");

$monitor ("Time = %0t | in = %b | sel = %b | out = %b", $time, in, sel, out);

end

initial begin 

for (integer i = 0; i < 4; i = i + 1) begin 

  in = $random;
  
  sel = i; #5 

end

#5 end

endmodule
