module PRODUCTION(A, AND_OP, OR_OP, XOR_OP, NAND_OP, NOR_OP, XNOR_OP);
    input [2:0] A;
    output AND_OP, OR_OP, XOR_OP, NAND_OP, NOR_OP, XNOR_OP;

    assign AND_OP = &A;
    assign OR_OP = |A;
    assign XOR_OP = ^A;
    assign NAND_OP = ~&A;
    assign NOR_OP = ~|A;
    assign XNOR_OP = ^~A;
endmodule