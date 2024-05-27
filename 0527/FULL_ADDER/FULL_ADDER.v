module FULL_ADDER(A, B, SUM);
    input A, B;
    output SUM;
	 
	 reg SUM;

    always @(A, B)
    SUM = A + B;
endmodule