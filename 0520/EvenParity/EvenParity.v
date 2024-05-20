module EvenParity (
    I, PE
);
    input [1:8] I;
    output PE;

    reg PE;
    integer j;

    always @(I) begin
        PE = 1'b0;
        j = 1;
        while (j < 9) begin
            PE = PE ^ I[j];
            j = j + 1;
        end
    end
endmodule