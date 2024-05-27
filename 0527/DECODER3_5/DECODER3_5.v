module DECODER3_5(A, B, C, Y);
    input A, B, C;
    output [4:0] Y;

    wire [2:0] I;
    reg [4:0] Y;

    assign I = {A, B, C};
    
    always @(I)
        if ((I == 3'o0) | (I == 3'o1))
            Y = 5'b11110;
        else if (I == 3'o2)
            Y = 5'b11101;
        else if (I == 3'o6)
            Y = 5'b10111;
        else
            Y = 5'b01111;
endmodule