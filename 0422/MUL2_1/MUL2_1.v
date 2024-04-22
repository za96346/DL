module MUL2_1(A, B, S, F);
    input A, B, S;
    output F;

    reg F;

    always @(A or B or S)
        begin
            F = A;
            if (S)
                F = B;
        end
endmodule