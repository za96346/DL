module DEMULTIPL_EXER1_2(DIN, S, Y);
    input DIN, S;
    output [1:0] Y;

    assign Y[0] = (~S) ? DIN : 1'b0;
    assign Y[1] = (S) ? DIN : 1'b0;
endmodule