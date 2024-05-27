module FULL_ADDER2(X0, Y0, C0, S0, C1);
    input X0, Y0, C0;
    output S0, C1;

    wire [2:0] DATA;
    reg C1, S0;

    assign DATA = {C0, X0, Y0};

    always @(DATA)
        if (DATA == 3'o0)
            {C1, S0} = 2'b00;
        else if ((DATA == 3'o1) | (DATA == 3'o2) | (DATA == 3'o4))
            {C1, S0} = 2'b01;
        else if ((DATA == 3'o3) | (DATA == 3'o5) | (DATA == 3'o6))
            {C1, S0} = 2'b10;
        else
            {C1, S0} = 2'b11;
endmodule