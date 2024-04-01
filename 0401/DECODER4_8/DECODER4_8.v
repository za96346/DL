module DECODER4_8(A, B, C, Y);
    input A, B, C;
    output [7:0] Y;

    assign Y[0] = ~(~A & ~B & ~C) |
                    ~(~A & ~B & C) |
                    ~(~A & B & ~C) |
                    ~(~A & B & C) |
                    ~(A & ~B & ~C) |
                    ~(A & B & ~C) |
                    ~(~A & ~B & C);
endmodule