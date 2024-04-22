module VOTE(A, B, C, F);
    input A, B, C;
    output F;
    
    reg F;
    always @(A or B or C)
        if ({A, B, C} == 3'b011 || {A, B, C} == 3'b110 || {A, B, C} == 3'b111)
            F = 1;
        else
            F = 0;

endmodule