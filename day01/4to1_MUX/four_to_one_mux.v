module four_to_one_mux_gl (
input wire [3:0]in,
input wire [1:0] sel, 
input wire out_gl;
); 

// Gate - Level Modeling: 

wire sel0_n, sel1_n, and_1, and_2, and_3, and_4, or_1, or_2;

not not1 (sel0_n, sel[0]);
not not2 (sel1_n, sel[1]);

and and1 (and_1, sel1_n, sel0_n, in[0]);
and and2 (and_2, sel1_n, sel[0], in[1]);
and and3 (and_3, sel[1], sel0_n, in[2]);
and and3 (and_4, sel[1], sel[0], in[3]);
or or1 (or_1, and_1, and_2);
or or2 (or_2, and_3, and_4);
or or3 (out_gl, or_1, or_2);

endmodule


module four_to_one_mux_df1 (
input wire [3:0] in, 
input wire [1:0] sel, 
output wire out_df1

);

 // Dataflow Modeling: 
assign out_df1 = (sel == 2'b00) ? in[0] : 
             (sel == 2'b01) ? in[1] : 
             (sel == 2'b10) ? in[2] : 
             in[3];

endmodule

module four_to_one_mux_df2 (
input wire [3:0] in, 
input wire [1:0] sel, 
output wire out_df2
);

assign out_df2 = sel[1] ? (sel[2] ? in[3] : in[2] ) : (sel[2] ? in[1] : in[0]);

endmodule

// Behavioral Modeling: 
module four_to_one_mux_beh (
input wire [3:0] in, 
input wire [1:0] sel, 
output reg out_beh
);

always @(*) begin 

  switch begin
     case (sel)  
       2'b00: out_beh = in[0];
       2'b01: out_beh = in[1]; 
       2'b10: out_beh = in[2]; 
       2'b11: out_beh = in[3];
       default: out_beh = 1'b0;

     endcase  

  end 

end

endmodule


