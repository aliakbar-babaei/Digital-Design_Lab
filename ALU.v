module ALU(input1, input2, opcode, zero, output);

	input [63:0] input1, input2;
	input [3:0] opcode;
	output reg zero;
	output reg [63:0]output;

	always @(*) begin
		
		zero <= 0;

		case(opcode)
			4'b0010: output = input1 + input2;
			4'b0110: output = input1 - input2;
			4'b0000: output = input1 & input2;
			4'b0001: output = input1 | input2;
			4'b0111: output = input2; 
			4'b1100: output = ~ (input1 | input2);
			default: output = 0
		endcase

	endmodule

endmodule
