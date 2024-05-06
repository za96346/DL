module COUNTER4(CLK, RESET, Q);
    input CLK, RESET;
    output [7:0] Q;

    reg [7:0] Q;

    always @(posedge CLK or negedge RESET)
        begin
            if (!RESET)
                Q <= 8'h00;
            else
                begin
                    if (Q[3:0] == 4'h0)
                        begin
                            Q[3:0] <= 4'h9;
                            Q[7:4] <= Q[7:4] + 1'b1;
                        end
                    else
                        Q[3:0] <= Q[3:0] + 1'b1;
                    
                    if (Q == 8'h2E)
                        Q <= 8'h00;
                end
        end
endmodule