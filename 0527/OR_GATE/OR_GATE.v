module OR_GATE(A, B, C, F);
    input A, B, C;
    output F;

    reg F;

    always @(A or B or C)
    if (|{A, B, C})
        F = 1'b1;
    else
        F = 1'b0;
endmodule