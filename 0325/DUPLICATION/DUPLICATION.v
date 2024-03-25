module DUPLICATION (
    A, WORD, SIGN_EXTEND
);

    input [7:0] A;
    output [15:0] WORD, SIGN_EXTEND;

    assign WORD = {{2{4'h8, 3'o2}}, 2'b00};
    assign SIGN_EXTEND = {{8{A[7]}}, A};
    
endmodule