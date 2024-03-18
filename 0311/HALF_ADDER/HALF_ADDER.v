module HALF_ADDER(X, Y, C, S);
    input X, Y;
    output C, S;

    xor SUM (S, X, Y);
    and CARRY (C, X, Y);
endmodule