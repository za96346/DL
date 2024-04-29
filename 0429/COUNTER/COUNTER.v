module COUNTER(CLK, RESET, Q);
    input CLK, RESET;
    output [3:0] Q;

    reg [3:0] Q;

    always @(posedge CLK or negedge RESET)
        if (!RESET)
            Q = 4'h0;
        else
            begin
                Q = Q + 1'b1;
                if (Q == 4'hD)
                    Q = 4'h0;
            end
endmodule