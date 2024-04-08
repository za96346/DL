module MUL4_1(I, S, F);
    input [3:0] I;
    input [1:0] S;
    output F;

    assign F = (S == 2'b00) ? I[0] :
                (S == 2'b01) ? I[1] :
                (S == 2'b10) ? I[2] :
                I[3];
endmodule