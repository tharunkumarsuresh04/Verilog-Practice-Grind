module two_to_one_MUX (
  input wire i0,
  input wire i1, 
  input wire sel,
  output wire y
);
  
  assign y = (sel == 1'b0) ? i0 : i1;
  
endmodule
