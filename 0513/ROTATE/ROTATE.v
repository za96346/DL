module ROTATE(CLK, RESET, Q);
    input CLK, RESET;
    output [7:0] Q;

    reg [7:0] Q;

    always @(posedge CLK or negedge RESET)
        begin
            if (!RESET)
                Q <= {8'h80};
            else
                Q <= {Q[6:0], Q[7]};
        end
endmodule