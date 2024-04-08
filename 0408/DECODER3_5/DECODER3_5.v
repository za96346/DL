module DECODER3_5(A, B, C, Y);
    input A, B, C;
    output [4: 0] Y;

    assign Y[0] = ({A, B, C} == 3'o0 | {A, B, C} == 3'o1) ? 1'b0 : 1'b1;
    assign Y[1] = ({A, B, C} == 3'o2) ? 1'b0 : 1'b1;
    assign Y[2] = ({A, B, C} == 3'o3 | {A, B, C} == 3'o4 | {A, B, C} == 3'o5) ? 1'b0 : 1'b1;
    assign Y[3] = ({A, B, C} == 3'o6) ? 1'b0 : 1'b1;
    assign Y[4] = ({A, B, C} == 3'o7) ? 1'b0 : 1'b1;
endmodule