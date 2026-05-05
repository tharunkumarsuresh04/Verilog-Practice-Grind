module full_subtractor_gatelevel (
input wire a, 
input wire b,
input wire bin, 
output wire difference_gl, 
output wire borrow_out_gl

);

// Gate-Level Modeling: 
wire xor_1, and_1, and_2, not_1, a_n, xnor_1;
xor xor1 (xor_1, a, b);
xor xor2 (difference_gl, xor_1, bin);
not not1 (a_n, a);
and and1 (and_1, a_n, b);
not not2 (not_1, xor_1);
and and2 (and_2, not_1, bin);
or or2 (borrow_out_gl, and_1, and_2);

endmodule


module full_subtractor_dataflow (
input wire a,
input wire b,
input wire bin,
output wire difference_df,
output wire borrow_out_df

);


// Dataflow Modeling: 

assign difference_df = a ^ b ^ bin;

assign borrow_out_df =(!a & b) | (!a & bin) | (b & bin);


endmodule


module full_subtractor_behavioral (
input wire a,
input wire b,
input wire bin,
output reg difference_beh,
output reg borrow_out_beh

);


// Behavioral Modeling

always @(*) begin 
  
  difference_beh = a ^ b ^ bin; 

  borrow_out_beh = (!a & b) | (!a & bin) | (b & bin);

 end 

endmodule
