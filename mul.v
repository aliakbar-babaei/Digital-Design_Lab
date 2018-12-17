module Multiplexer (ind1, ind2, input_select, output_data);

	input input_select;
	input [63:0] ind1, ind2;
	output[63:0] output_data;

	assign output_data = input_select ? ind2 : ind1;

endmodule