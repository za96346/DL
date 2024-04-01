module COMPARE_1(A, B, LARGE, EQV, SMALL);
    input A, B;
    output LARGE, EQV, SMALL;

    assign LARGE = A & ~B;
    assign EQV = ~A & ~B | A & B;
    assign SMALL = ~A & B;
endmodule