module CONCATENATION(A, HIGH_BYTE, LOW_BYTE, SWAP, LEFT, RIGHT, WORD, HIGH_NIBBLE, LOW_NIBBLE);

    input [7:0] A, HIGH_BYTE, LOW_BYTE;
    output [7:0]  SWAP, LEFT, RIGHT;
    output [3:0] HIGH_NIBBLE, LOW_NIBBLE;
    output [15:0] WORD;

    assign SWAP = {A[0], A[1], A[2], A[3], A[4], A[5], A[6], A[7]};
    assign RIGHT = {A[0], A[7:1]};
    assign LEFT = {A[6:0], A[7]};
    assign WORD = {HIGH_BYTE, LOW_BYTE};
    assign {HIGH_NIBBLE, LOW_NIBBLE} = HIGH_BYTE;


endmodule