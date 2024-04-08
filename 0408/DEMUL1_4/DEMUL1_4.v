module DEMUL1_4(DIN, S, Y);
    input DIN;
    input [1:0] S;

    output [3:0] Y;

    assign Y[0] = ({S[1], S[0]} == 2'b00) ? DIN : 1'b0;
    assign Y[1] = ({S[1], S[0]} == 2'o01) ? DIN : 1'b0;
    assign Y[2] = ({S[1], S[0]} == 2'o10) ? DIN : 1'b0;
    assign Y[3] = ({S[1], S[0]} == 2'o11) ? DIN : 1'b0;
endmodule