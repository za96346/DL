module DECODER2_4(A, B, Y);
    input A, B;
    output [3:0] Y;

    assign Y = ~(~A & ~B) |
            ~(~A & B) |
            ~(A & ~B) |
            ~(A & B);
endmodule