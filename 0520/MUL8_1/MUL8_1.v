module MUL8_1(I, S, F);
    input [7:0] I;
    input [2:0] S;
    output F;

    reg [1:0] X;
    reg F;

    always @(I or S) begin
        X[0] = MUL4_1(I[3:0], S[1:0]);
        X[1] = MUL4_1(I[7:4], S[1:0]);
        F = MUL2_1(X[0], X[1], S[2]);
    end
    function MUL2_1;
        input A, B, S;

        case (S)
            1'b0    :   MUL2_1 = A;
            default :   MUL2_1 = B;
        endcase
    endfunction

    function MUL4_1;
        input [3:0] I;
        input [1:0] S;

        case (S)
            2'b00   :   MUL4_1 = I[0];
            2'b01   :   MUL4_1 = I[1];
            2'b10   :   MUL4_1 = I[2];
            default :   MUL4_1 = I[3];
        endcase
    endfunction
endmodule