`timescale 1ns/1ps
/*
  dut_dff.sv
  Práctica #1 - Diseño a validar (DUT)

  D Flip-Flop (1 bit) con reset asíncrono activo en 1.
  - q cambia solo en flanco de subida de clk
  - si rst=1 -> q=0 inmediatamente (asíncrono)
*/

module dut_dff (
  input  logic clk,
  input  logic rst,   // reset asíncrono activo en 1
  input  logic d,
  output logic q
);

  always_ff @(posedge clk or posedge rst) begin
    if (rst) q <= 1'b0;
    else     q <= d;
  end

endmodule
