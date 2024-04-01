module FULL_ADDER(X0, Y0, C0, C1, S0);
    input X0, Y0, C0;
    output C1, S0;

    assign S0 = X0 ^ Y0 ^ C0;
    assign C1 = (X0 & Y0) | (X0 & C0) | (Y0 & C0);
endmodule