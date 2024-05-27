module COMPARACTOR(A, B, LARGE, EQV, SMALL);
    input [3:0] A, B;
    output LARGE, EQV, SMALL;

    reg LARGE, EQV, SMALL;

    always @(A or B)
        if (A > B)
            {LARGE, EQV, SMALL} = 3'b100;
        else if (A == B)
            {LARGE, EQV, SMALL} = 3'b010;
        else
            {LARGE, EQV, SMALL} = 3'b001;
endmodule