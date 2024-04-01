module DECODER1_2(DIN, S, Y);
    input DIN, S;
    output [1:0] Y;

    assign Y[0] = ~S & DIN;
    assign Y[1] = S & DIN;

endmodule