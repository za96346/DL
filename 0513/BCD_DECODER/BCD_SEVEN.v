module BCD_SEVEN(BCD, SEGMENT);
    input   [3:0] BCD;
    output  [7:0] SEGMENT;

    reg [7:0] SEGMENT;

    always @(BCD)
        case(BCD)
            4'h0    :   SEGMENT = 8'hC0;
            4'h1    :   SEGMENT = 8'hF9;
            4'h2    :   SEGMENT = 8'hA4;
            4'h3    :   SEGMENT = 8'hB0;
            4'h4    :   SEGMENT = 8'h99;
            4'h5    :   SEGMENT = 8'h92;
            4'h6    :   SEGMENT = 8'h82;
            4'h7    :   SEGMENT = 8'hF8;
            4'h8    :   SEGMENT = 8'h80;
            4'h9    :   SEGMENT = 8'h90;
            default :   SEGMENT = 8'hFF;
        endcase
endmodule