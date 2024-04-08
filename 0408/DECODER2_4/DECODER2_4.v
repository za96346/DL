module DECODER2_4(A, B, Y);
    input A, B;
    output [3: 0] Y;

    assign Y[0] = ({A, B} == 3'b00) ? 1'b0 : 1'b1;
    assign Y[1] = ({A, B} == 3'b01) ? 1'b0 : 1'b1;
    assign Y[2] = ({A, B} == 3'b10) ? 1'b0 : 1'b1;
    assign Y[3] = ({A, B} == 3'b11) ? 1'b0 : 1'b1;
endmodule