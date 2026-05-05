module half_subtractor_tb;
  
  reg a, b;
  wire borrow, difference;
  
  half_subtractor DUT (.a(a), .b(b), .borrow(borrow), .difference(difference));
  
  initial begin 
    
    $dumpfile("halfsubtractor.vcd");
    $dumpvars (0, half_subtractor_tb);
    
  end

  initial begin
    $display("=========================================================================");
    $display("=============================Half-Subtractor=============================");
    $display("=========================================================================");
    
    $monitor("a = %b | b = %b | borrow = %b | difference = %b", a, b, borrow, difference);
    
  end

  initial begin
    a = 1'b0; b = 1'b0; 
    
    #10 a = 1'b0; b = 1'b1;
    
    #10 a = 1'b1; b = 1'b0;
    
    #10 a = 1'b1; b = 1'b1;
    
    #10 $finish;
    
    
  end
  
endmodule
