module MUL4_1(I, S, F);
    input [3:0] I;
    input [1:0] S;
    output F;

    reg F;

    always @(I or S)
        if (S == 2'b00)
            F = I[0];
        else if (S == 2'b01)
            F = I[1];
        else if (S == 2'b10)
            F = I[2];
        else
            F = I[3];
endmodule