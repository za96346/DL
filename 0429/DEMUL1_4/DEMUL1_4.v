module DEMUL1_4(DIN, S, Y);
    input DIN;
    input [1:0] S;
    output [3:0] Y;

    reg [3:0] Y;

    always @(DIN or S)
        if (S[1] == 1'b0)
            if (S[0] == 1'b0)
                Y = {DIN, 3'b000};
            else
                Y = {1'b0, DIN, 2'b00};
        else
            if (S[0] == 1'b0)
                Y = {2'b00, DIN, 1'b0};
            else
                Y = {3'b000, DIN};
endmodule