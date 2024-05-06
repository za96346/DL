module COUNTER2(CLK, RESET, Q);
    input CLK, RESET;
    output [2:0] Q;

    reg [2:0] Q;

    always @(posedge CLK or negedge RESET)
        begin
            if (!RESET)
                Q <= {3'o1};
            else
                case (Q)
                    {3'o1}    : Q <= {3'o3};
                    {3'o3}    : Q <= {3'o5};
                    {3'o5}    : Q <= {3'o7};
                    {3'o7}    : Q <= {3'o1};
                    default : Q <= {3'o1};
                endcase
        end
endmodule