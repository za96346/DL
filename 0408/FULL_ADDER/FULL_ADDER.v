module FULL_ADDER(X0, Y0, C0, S0, C1);
    input X0, Y0, C0;
    output S0, C1;

    assign S0 = (~X0 & ~Y0 & ~C0) ? 1'b1 :
                (~X0 & Y0 & ~C0) ? 1'b1 :
                (X0 & ~Y0 & ~C0) ? 1'b1 :
                (X0 & Y0 & C0) ? 1'b1 : 1'b0;

    assign C1 = (~X0 & Y0 & C0) ? 1'b1 :
                (X0 & ~Y0 & C0) ? 1'b1 :
                (X0 & Y0 & ~C0) ? 1'b1 :
                (X0 & Y0 & C0) ? 1'b1 : 1'b0;
endmodule