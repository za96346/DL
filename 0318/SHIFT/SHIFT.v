module SHIFT (A, B, TIMES, RIGHT, LEFT);

    input [7:0] A, B;
    input [2:0] TIMES;
    output [ 7:0] RIGHT, LEFT;

    assign RIGHT = A >> TIMES;
    assign LEFT = B << TIMES;

endmodule