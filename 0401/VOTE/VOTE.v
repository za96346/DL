module VOTE(A, B, C, P);
    input A, B, C;
    output P;

    assign P = ~A & B & C |
                A & ~B & C |
                A & B & ~C |
                A & B & C;
endmodule