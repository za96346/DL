module DECODER3_8(A, B, C, Y);
    input A, B, C;
    output [7:0] Y;

    reg [7:0] Y;

    always @(A or B or C)
        if ({A, B, C} == 3'o0)
            Y = {8'b11111110};
        else if ({A, B, C} == 3'o1)
            Y = {8'b11111101};
        else if ({A, B, C} == 3'o2)
            Y = {8'b11111011};
        else if ({A, B, C} == 3'o3)
            Y = {8'b11110111};
        else if ({A, B, C} == 3'o4)
            Y = {8'b11101111};
        else if ({A, B, C} == 3'o5)
            Y = {8'b11011111};
        else if ({A, B, C} == 3'o6)
            Y = {8'b10111111};
        else
            Y = {8'b01111111};
endmodule