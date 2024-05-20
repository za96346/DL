module FourBitFullAdder(C0, X, Y, S, C4);
    input C0;
    input [3:0] X, Y;
    output C4;
    output [3:0] S;

    reg [3:0] S;
    reg CARRY, C4;
    integer i;

    always @(C0 or X or Y or CARRY)
        begin
            CARRY = C0;
            for (i = 0; i < 4; i = i + 1)
                begin S[i] = X[i] ^ Y[i] ^ CARRY;
                CARRY = (X[i] & Y[i]) |
                        (X[i] & CARRY) |
                        (Y[i] & CARRY);
                end
            C4 = CARRY;
        end
endmodule