module BCD_DECODER(CLK, RESET, SEGMENT);
    input CLK;
    input RESET;
    output [7:0] SEGMENT;

    wire [3:0] BCD;

    COUNTER     A1  (.CLK(CLK), .RESET(RESET), .Q(BCD));
    BCD_SEVEN   A2  (.BCD(BCD), .SEGMENT(SEGMENT));
endmodule