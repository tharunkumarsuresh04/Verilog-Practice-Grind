module all_ones_detector(
  input [7:0] a, 
  output result
);
  
  assign result = &a;
  
endmodule
