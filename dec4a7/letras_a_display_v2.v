module dec4a7 (
    input  wire [3:0] in,
    output reg  [6:0] out
);

always @(*) begin
    case (in)
        4'b0000: out = 7'b1111010; // r
        4'b0001: out = 7'b1000001; // U
        4'b0010: out = 7'b1100000; // b
        4'b0011: out = 7'b0110000; // E
        4'b0100: out = 7'b1101010; // n
        4'b0101: out = 7'b0110000; // E
        4'b0110: out = 7'b0100100; // S
        4'b0111: out = 7'b1110000; // t
        4'b1000: out = 7'b1111010; // r
        4'b1001: out = 7'b0001000; // A
        4'b1010: out = 7'b1000010; // d
        4'b1011: out = 7'b0001000; // A
        4'b1100: out = 7'b0001000; // A
        4'b1101: out = 7'b1111010; // r
        4'b1110: out = 7'b1100010; // o
        4'b1111: out = 7'b1110001; // L
        default: out = 7'b1111111; // apagado
    endcase
end

endmodule
