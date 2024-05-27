module DFFF(CLK, D, F);
    input CLK, D;
    output F;

    reg F;

    always @(CLK or D)
		 if (CLK)
		 F = D;
endmodule