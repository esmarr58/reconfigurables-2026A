module bcd_7seg_anodo_comun (
    input  wire x,  // MSB
    input  wire w,
    input  wire y,
    input  wire z,  // LSB
    output reg  a,  // segmento 6
    output reg  b,
    output reg  c,
    output reg  d,
    output reg  e,
    output reg  f,
    output reg  g
);

always @(*) begin
    // Display de anodo comun:
    // 0 = segmento encendido
    // 1 = segmento apagado
    case ({x,w,y,z})
        4'b0000: {a,b,c,d,e,f,g} = 7'b0000001; // 0
        4'b0001: {a,b,c,d,e,f,g} = 7'b1001111; // 1
        4'b0010: {a,b,c,d,e,f,g} = 7'b0010010; // 2
        4'b0011: {a,b,c,d,e,f,g} = 7'b0000110; // 3
        4'b0100: {a,b,c,d,e,f,g} = 7'b1001100; // 4
        4'b0101: {a,b,c,d,e,f,g} = 7'b0100100; // 5
        4'b0110: {a,b,c,d,e,f,g} = 7'b0100000; // 6
        4'b0111: {a,b,c,d,e,f,g} = 7'b0001111; // 7
        4'b1000: {a,b,c,d,e,f,g} = 7'b0000000; // 8
        4'b1001: {a,b,c,d,e,f,g} = 7'b0000100; // 9
        default: {a,b,c,d,e,f,g} = 7'b1111111; // 10 a 15: nada encendido
    endcase
end

endmodule
