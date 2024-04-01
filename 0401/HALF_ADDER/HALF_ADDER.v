module HALF_ADDER(X, Y, S, C);
    input X, Y;
    output S, C;

    assign S = (~X & Y) ? 1'b1 :
                (X & ~Y) ? 1'b1 :
                            1'b0;
    assign C = (X & Y) ? 1'b1 : 1'b0;
endmodule