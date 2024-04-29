module MUL8_1(I, S, F);
    input [2:0] S;
    input [7:0] I;
    output F;

    reg F;

    always @(I or S)
        if (S == 3'b000)
            F = I[0];
        else if (S == 3'b001)
            F = I[1];
        else if (S == 3'b010)
            F = I[2];
        else if (S == 3'b011)
            F = I[3];
        else if (S == 3'b100)
            F = I[4];
        else if (S == 3'b101)
            F = I[5];
        else if (S == 3'b110)
            F = I[6];
        else if (S == 3'b111)
            F = I[7];
endmodule