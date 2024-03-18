module RELATIONAL (
    A, B, LARGE, SMALL, LARGE_EQV, SMALL_EQV
);

    input [3:0] A, B;
    output LARGE, SMALL, LARGE_EQV, SMALL_EQV;

    assign LARGE = (A > B);
    assign SMALL = (A < B);
    assign LARGE_EQV = (A >= B);
    assign SMALL_EQV = (A <= B);
    
endmodule