module BCD_SEVEN(BCD, SEGMENT);
    input [3: 0] BCD;
    output [7: 0] SEGMENT;

    assign SEGMENT = (BCD == 4'h0) ? 8'hc0 :
                     (BCD == 4'h1) ? 8'hF9 :
                     (BCD == 4'h2) ? 8'hA4 :
                     (BCD == 4'h3) ? 8'hB0 :
                     (BCD == 4'h4) ? 8'h99 :
                     (BCD == 4'h5) ? 8'h92 :
                     (BCD == 4'h6) ? 8'h82 :
                     (BCD == 4'h7) ? 8'hF8 :
                     (BCD == 4'h8) ? 8'h80 :
                     (BCD == 4'h9) ? 8'h90 :
                     8'hFF;
endmodule