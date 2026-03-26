module basic_gates (
input wire a, 
input wire b,
output wire and_out, 
output wire or_out, 
output wire not_out1,
output wire not_out2,
output wire xor_out,
output wire nand_out, 
output wire nor_out, 
output wire xnor_out
);
and and1 (and_out, a, b);
or or1(or_out, a, b);
not not1 (not_out1, a);
not not2 (not_out2, b);
xor xor1(xor_out, a, b);
nand nand1(nand_out, a, b);
nor nor1(nor_out, a, b);
xnor xnor1(xnor_out, a, b);


endmodule
