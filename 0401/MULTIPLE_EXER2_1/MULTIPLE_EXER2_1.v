module MULTIPLE_EXER2_1(S, A, B, F);
    input A, B, S;
    output F;

    assign F = ~S & A & ~B |
                ~S & A & B |
                S & ~A & B |
                S & A & B;
endmodule