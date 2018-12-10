module Testbench(A, B, ALU_Sel, ALU_Out, CarryOut);

  input reg[7:0] A,B;
  input reg[3:0] ALU_Sel;

  output wire[7:0] ALU_Out;
  output wire CarryOut;

  integer i;
  ALU alu(A, B, ALU_Sel, ALU_Out, CarryOut);

  initial begin
    A = 8'h0A;
    B = 4'h02;
    ALU_Sel = 4'h0;
    
    for (i=0;i<=15;i=i+1)
    begin
     ALU_Sel = ALU_Sel + 8'h01;
     #10;
    end;
    
    A = 8'hF6;
    B = 8'h0A;
  end
  
endmodule
