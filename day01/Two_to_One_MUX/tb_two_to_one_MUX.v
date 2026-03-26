module tb_two_to_one_MUX;
  reg i0, i1, sel;
  wire y;
  
  two_to_one_MUX DUT (.i0(i0), .i1(i1), .sel(sel), .y(y));
  
  initial begin 
    $display("=============================================================");
    
    $display("=====================2:1 MULTIPLEXER=========================");
    
    $display("=============================================================");
    
    $dumpfile("twotooneMUX.vcd");
    
    $dumpvars(0);
    
    $monitor ("i0 = %b | i1 = %b | sel = %b | y = %b", i0, i1, sel, y);
    
    i0 = 1'b0; i1 = 1'b0; sel = 1'b0;
    
    #10 i0 = 1'b0; i1 = 1'b0; sel = 1'b1;
    #10 i0 = 1'b0; i1 = 1'b1; sel = 1'b0;
    #10 i0 = 1'b0; i1 = 1'b1; sel = 1'b1;
    #10 i0 = 1'b1; i1 = 1'b0; sel = 1'b0;
    #10 i0 = 1'b1; i1 = 1'b0; sel = 1'b1;
    #10 i0 = 1'b1; i1 = 1'b1; sel = 1'b0;
    #10 i0 = 1'b1; i1 = 1'b1; sel = 1'b1;
    
    #10 i0 = 1'b0; i1 = 1'b0; sel = 1'b0;
    
    #10 i0 = 1'b0; i1 = 1'b0; sel = 1'b1;
    #10 i0 = 1'b0; i1 = 1'b1; sel = 1'b0;
    #10 i0 = 1'b0; i1 = 1'b1; sel = 1'b1;
    #10 i0 = 1'b1; i1 = 1'b0; sel = 1'b0;
    #10 i0 = 1'b1; i1 = 1'b0; sel = 1'b1;
    #10 i0 = 1'b1; i1 = 1'b1; sel = 1'b0;
    #10 i0 = 1'b1; i1 = 1'b1; sel = 1'b1;
    
    #40 $finish;
    
  end
  
endmodule
