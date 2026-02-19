// File: top_bcd7seg_beh.v
// Repo: https://github.com/TU_USUARIO/TU_REPO/tree/main/bcd7seg  (actualiza en tu README)
// Descripcion: MUX 2:1 de 4 bits + Decodificador BCD->7 segmentos (activo alto)
// Nota: Si tu display es activo en bajo, invierte la salida: assign seg = ~seg_r;

module top_bcd7seg_beh (
  input  [3:0] bcd0,
  input  [3:0] bcd1,
  input        sel,
  output [6:0] seg
);

  reg  [6:0] seg_r;
  reg  [3:0] bcd_sel;

  // Salida final (por defecto: activo alto)
  assign seg = seg_r;

  // Si tu display es activo en bajo, usa:
  // assign seg = ~seg_r;

  // CORE BEH: combinacional
  always @(*) begin
    // MUX 2:1 (4 bits)
    bcd_sel = (sel) ? bcd1 : bcd0;

    // Decoder BCD -> 7 segmentos (activo alto)
    // Convencion: seg[6:0] = a b c d e f g
    case (bcd_sel)
      4'd0: seg_r = 7'b1111110;
      4'd1: seg_r = 7'b0110000;
      4'd2: seg_r = 7'b1101101;
      4'd3: seg_r = 7'b1111001;
      4'd4: seg_r = 7'b0110011;
      4'd5: seg_r = 7'b1011011;
      4'd6: seg_r = 7'b1011111;
      4'd7: seg_r = 7'b1110000;
      4'd8: seg_r = 7'b1111111;
      4'd9: seg_r = 7'b1111011;
      default: seg_r = 7'b0000001; // BCD invalido (10-15): salida segura
    endcase
  end

endmodule
