module HALF_ADDER(X, Y, S, C);
    input X, Y;
    output S, C;

    reg S, C;

    always @(X or Y)
        if ({X, Y} == 2'b00)
            begin
                S = 1'b0;
                C = 1'b0;
            end
        else if (({X, Y} == 2'b01) | ({X, Y} == 2'b10))
            begin
                S = 1'b1;
                C = 1'b0;
            end
        else
            begin
                S = 1'b0;
                C = 1'b1;
            end
endmodule