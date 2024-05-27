module DEMUL1_4(DIN, S, Y);
    input DIN;
    input [1:0] S;
    output [3:0] Y;

    reg [3:0] Y;

    always @(DIN or S)
        if (S == 2'b00)
            Y = {3'b000, DIN};
        else if (S == 2'b01)
            Y = {2'b00, DIN, 1'b0};
        else if (S == 2'b10)
            Y = {1'b0, DIN, 2'b00};
        else
            Y = {DIN, 3'b000};
endmodule