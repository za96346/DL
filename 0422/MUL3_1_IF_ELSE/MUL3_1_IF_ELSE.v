module MUL3_1_IF_ELSE(I, S, R, F);
    input [2:0] I;
    input [1:0] S;
    input R;
    output F;

    reg F;
    
    always @(I, S, R)
        if (R==1)
            F = 0;
        else
            F = ~S[1] & ~S[0] & I[0] |
                S[1] & ~S[0] & I[1] |
                ~S[1] & S[0] & I[2] |
                ~S[1] & ~S[0] & F;
endmodule