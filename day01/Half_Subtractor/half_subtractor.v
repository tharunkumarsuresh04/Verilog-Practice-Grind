module half_subtractor (
  input wire a, 
  input wire b, 
  output wire borrow, 
  output wire difference
);
  // Using Continuous assignment(Dataflow Modeling):
  wire a_not;
//   assign difference = a ^ b;
//   assign borrow = !(a) && b;
  
  // Using Gate-Level Modeling
  
  
  xor xor_1 (difference, a, b);
  
  not not_1 (a_not, a);
  
  and and_1 (borrow, a_not, b);


endmodule
  
 
