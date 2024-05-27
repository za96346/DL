module DECODER2_4(A, B, Y);
    input A, B;
    output [3:0] Y;

    reg [3:0] Y;

    always @(A  or B)
        if ({A, B} == 2'b00)
            Y = {4'b0001};
        else if ({A, B} == 2'b01)
            Y = {4'b0010};
        else if ({A, B} == 2'b10)
            Y = {4'b0100};
        else
            Y = {4'b1000};
endmodule