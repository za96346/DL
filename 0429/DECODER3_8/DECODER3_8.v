module DECODER3_8(A, B, C, Y);
    input A, B, C;
    output [7:0] Y;

    reg [7:0] Y;

    always @(A or B or C)
        case ({A, B, C})
            3'b000 : Y = {8'b11111110};
            3'b001 : Y = {8'b11111101};
            3'b010 : Y = {8'b11111011};
            3'b011 : Y = {8'b11110111};
            3'b100 : Y = {8'b11101111};
            3'b101 : Y = {8'b11011111};
            3'b110 : Y = {8'b10111111};
            3'b111 : Y = {8'b01111111};
        endcase
endmodule