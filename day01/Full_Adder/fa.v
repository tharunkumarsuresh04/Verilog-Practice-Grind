module fa(
input wire a, 
input wire b, 
input wire cin,
output wire sum, 
output wire cout
);

assign sum = a ^ b ^ cin;
assign carry_out =(a && b) ||(b && cin) || (cin && a);

endmodule




