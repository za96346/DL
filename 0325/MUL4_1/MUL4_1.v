module MUL4_1(I, S, F);

    input [3:0] I;
    input [1:0] S;
    output F;

    assign F = ~S[1] & ~S[0] & I[0] |
                ~S[1] & S[0] & I[1] |
                S[1] & ~S[0] & I[2] |
                S[1] & S[0] & I[3];

endmodule