module PRIORITY (
    A, B, C, X, Y, F
);
    input A, B, C, X, Y;
    output F;

    assign F = (X == 1'b1) ? A :
                (Y == 1'b1) ? B :
                                C;
    
endmodule