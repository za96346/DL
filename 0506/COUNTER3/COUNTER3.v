module COUNTER3(CLK, RESET, Q);
    input CLK, RESET;
    output [3:0] Q;

    reg [4:0] REGS;

    always @(posedge CLK or negedge RESET)
        begin
            if (!RESET)
                REGS <= {1'b0, 4'h2};
            else
                case (REGS)
                    {1'b0, 4'h2}    : REGS <= {1'b0, 4'h4};
                    {1'b0, 4'h4}    : REGS <= {1'b0, 4'h6};
                    {1'b0, 4'h6}    : REGS <= {1'b1, 4'h4};
                    {1'b1, 4'h4}    : REGS <= {1'b0, 4'h8};
                    {1'b0, 4'h8}    : REGS <= {1'b0, 4'h2};
                    default : REGS <= {1'b0, 4'h2};
                endcase
        end
		assign Q = REGS[3:0];
endmodule