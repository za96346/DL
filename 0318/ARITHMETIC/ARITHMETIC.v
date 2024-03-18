module ARITHMETIC(A, B, PRODUCT, SUM, DIFFERENCE);
	input [4:0] A, B;
	output [7:0] PRODUCT, SUM, DIFFERENCE;
	
	assign SUM = A + B;
	assign DIFFERENCE = A - B;
	assign PRODUCT = A * B;
endmodule