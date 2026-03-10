module dec4a7 (
    input  wire x,
    input  wire y,
    input  wire z,
    input  wire w,
    output reg  a,
    output reg  b,
    output reg  c,
    output reg  d,
    output reg  e,
    output reg  f,
    output reg  g
);

always @(*) begin
    case ({x,y,z,w})
        4'b0000: {a,b,c,d,e,f,g} = 7'b1111010; // r
        4'b0001: {a,b,c,d,e,f,g} = 7'b1000001; // U
        4'b0010: {a,b,c,d,e,f,g} = 7'b1100000; // b
        4'b0011: {a,b,c,d,e,f,g} = 7'b0110000; // E
        4'b0100: {a,b,c,d,e,f,g} = 7'b1101010; // n
        4'b0101: {a,b,c,d,e,f,g} = 7'b0110000; // E
        4'b0110: {a,b,c,d,e,f,g} = 7'b0100100; // S
        4'b0111: {a,b,c,d,e,f,g} = 7'b1110000; // t
        4'b1000: {a,b,c,d,e,f,g} = 7'b1111010; // r
        4'b1001: {a,b,c,d,e,f,g} = 7'b0001000; // A
        4'b1010: {a,b,c,d,e,f,g} = 7'b1000010; // d
        4'b1011: {a,b,c,d,e,f,g} = 7'b0001000; // A
        4'b1100: {a,b,c,d,e,f,g} = 7'b0001000; // A
        4'b1101: {a,b,c,d,e,f,g} = 7'b1111010; // r
        4'b1110: {a,b,c,d,e,f,g} = 7'b1100010; // o
        4'b1111: {a,b,c,d,e,f,g} = 7'b1110001; // L
        default: {a,b,c,d,e,f,g} = 7'b1111111; // apagado
    endcase
end

endmodule
