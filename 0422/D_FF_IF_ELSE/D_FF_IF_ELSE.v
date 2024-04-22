module D_FF_IF_ELSE(CLK, RESET, D, Q);
    input CLK, RESET, D;
    output Q;

    reg Q;
    
    always @(negedge CLK or negedge RESET)
        if (!RESET)
            Q = 0;
        else
            Q = D;
endmodule