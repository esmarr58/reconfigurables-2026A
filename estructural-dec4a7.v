// === Submodulo: MUX 2:1 de 4 bits ===
module mux2_4 (
  input  [3:0] d0,
  input  [3:0] d1,
  input        s,
  output [3:0] y
);
  assign y = (s) ? d1 : d0;
endmodule

// === Submodulo: Decoder BCD->7seg (combinacional) ===
module bcd7seg (
  input  [3:0] bcd,
  output [6:0] seg
);
  reg  [6:0] seg_r;
  wire [6:0] seg_raw;

  assign seg_raw = seg_r;

  // Salida final (por defecto: activo alto)
  assign seg = seg_raw;

  // Si tu display es activo en bajo, usa:
  // assign seg = ~seg_raw;

  always @(*) begin
    case (bcd)
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

// === TOP STRUCTURAL ===
// CORE STRUCT: instancias + conexiones
module top_bcd7seg_struct (
  input  [3:0] bcd0,
  input  [3:0] bcd1,
  input        sel,
  output [6:0] seg
);

  wire [3:0] bcd_sel;
  wire [6:0] seg_raw;

  // INSTANCIA 1: MUX (core estructural)
  mux2_4 u_mux (
    .d0(bcd0),
    .d1(bcd1),
    .s(sel),
    .y(bcd_sel)
  );

  // INSTANCIA 2: Decoder (core estructural)
  bcd7seg u_dec (
    .bcd(bcd_sel),
    .seg(seg_raw)
  );

  // Salida final (por defecto: activo alto)
  assign seg = seg_raw;

  // Si tu display es activo en bajo, usa:
  // assign seg = ~seg_raw;

endmodule
