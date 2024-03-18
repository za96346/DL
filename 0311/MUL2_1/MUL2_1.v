module MUL2_1(A, B, S, F);
    input A, B, S;
    output F;

    assign F = ~S & A | S & B;
endmodule