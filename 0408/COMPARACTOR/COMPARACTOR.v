module COMPARACTOR(A, B, LARGE, EQV, SMALL);
    input [4: 0] A, B;
    output LARGE, EQV, SMALL;

    assign {LARGE, EQV, SMALL} = (A > B) ? 3'b100:
                                (A < B) ? 3'b001 : 3'b010;
endmodule