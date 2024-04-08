module ENCODER4_2(I, A, B);
    input [3: 0] I;
    output A, B;

    assign {A, B} = (I == 4'b0001) ? 2'b00 : 
                    (I == 4'b0010) ? 2'b01 :
                    (I == 4'b0100) ? 2'b10 :
                    (I == 4'b1000) ? 2'b11 : z; 
endmodule