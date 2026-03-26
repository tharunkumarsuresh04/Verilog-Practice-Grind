module tb_all_zeros_detector;
  
  reg [7:0]a;
  wire result;
  
  all_zeros_detector dut(.a(a), .result(result));
  
  initial begin
    $dumpfile("allzerosdetector.vcd");
    $dumpvars(0);
  end
  
  initial begin   
    $monitor("a = %b | Result = %b", a, result);
  end

  initial begin 	
    a = 8'd0; 
    #10 a = 8'd1;
    #10 a = 8'd2;
    #10 a = 8'd3;
    #10 a = 8'd4;
    #10 a = 8'd6;
    #10 a = 8'd7;
    #10 a = 8'd15;
    #10 a = 8'd255;
    #10 a = 8'd127;
    #10 a = 8'd60;
	#10 a = 8'd0;
    #50 $finish;
  end
endmodule
