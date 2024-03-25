module CONDITION(A, B, C, F);

    input A, B, C;
    output F;

    assign F = (A & B & C) ? 1'b1 : 1'b0;

endmodule