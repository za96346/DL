module LEFT_SHIFT(CLK, RESET, Q, DIN);
    input CLK, RESET, DIN;
    output [7:0] Q;

    reg [7:0] Q;

    always @(posedge CLK or negedge RESET)
        begin
            if (!RESET)
                Q <= {8'hff};
            else
                Q <= {Q[6:0], DIN};
        end
endmodule