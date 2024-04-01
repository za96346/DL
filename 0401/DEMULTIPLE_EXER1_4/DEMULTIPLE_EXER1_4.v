module DEMULTIPLE_EXER1_4(DIN, S, Y);
    input DIN;
    input [1:0] S;

    output [3:0] Y;

    assign Y[0] = ~S[1] & ~S[0] & DIN;
    assign Y[1] = ~S[1] & S[0] & DIN;
    assign Y[2] = S[1] & ~S[0] & DIN;
    assign Y[3] = S[1] & S[0] & DIN;
endmodule