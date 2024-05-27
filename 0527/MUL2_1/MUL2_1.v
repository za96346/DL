module MUL2_1(A, B, S, F);
    input A, B, S;
    output F;

    reg F;
    always @(A or B or S)
    if (S)
        F = B;
    else
        F = A;
endmodule