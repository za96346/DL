module BCD_EVEN(CLK, RESET, Q);
    input CLK, RESET;
    output [3:0] Q;

    reg [3:0] Q;

    always @(posedge CLK or negedge RESET)
        begin
            if (!RESET)
                Q <= {4'hf};
            else
                case (Q)
                    {4'hf}    : Q <= {4'hd};
                    {4'hd}    : Q <= {4'hb};
                    {4'hb}    : Q <= {4'h9};
                    {4'h9}    : Q <= {4'hf};
                    default : Q <= {4'hf};
                endcase
        end
endmodule