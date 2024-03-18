module BITWISE(A, B, NOT_OP, AND_OP, OR_OP, XOR_OP, NAND_OP, NOR_OP, XNOR_OP);
    input A, B;
    output NOT_OP, AND_OP, OR_OP, XOR_OP, NAND_OP, NOR_OP, XNOR_OP;

    assign NOT_OP = ~A;
    assign AND_OP = A & B;
    assign OR_OP = A | B;
    assign XOR_OP = A ^ B;
    assign NAND_OP = ~(A & B);
    assign NOR_OP = ~(A | B);
    assign XNOR_OP = (A ^ ~B);
endmodule