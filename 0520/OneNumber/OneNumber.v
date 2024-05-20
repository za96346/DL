module OneNumber(I, NUMBER);
    parameter LENGTH = 16;
    input [LENGTH - 1:0] I;
    output [4:0] NUMBER;

    reg [4:0] NUMBER;
    integer j;

    always @(I)
        begin
            NUMBER = 5'b00000;
            j = LENGTH - 1;
            repeat (LENGTH)
                begin
                    if (I[j])
                    NUMBER = NUMBER + 1;
                    j = j - 1;
                end
        end
endmodule