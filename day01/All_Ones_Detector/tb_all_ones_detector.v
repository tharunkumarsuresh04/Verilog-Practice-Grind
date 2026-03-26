
module all_ones_detector_tb;
  
  reg[7:0] a;
  
  wire result;
  
  all_ones_detector dut (.a(a), .result(result));
  
  initial begin
    $dumpfile("allonesdetector.vcd");
    
    $dumpvars(0, all_ones_detector_tb);
    
  end
  
  initial begin
    $display("=======================================================");
    
    $display("=================All - Ones - Detector=================");
    
    $display("=======================================================");
    
    
    $monitor("Time = %0t | a = %b | result = %b", $time, a, result);
    
  end

  initial begin
    a = 8'd0;
    
    #10 a = 8'd1; 
    
    #10 a = 8'd2;
    
    #10 a = 8'd255;
    
    #10 a = 8'd127;
    
    #10 a = 8'd25;
    
    #10 a = 8'd140;
    
    #50 $finish();
    
  end 
 
endmodule
