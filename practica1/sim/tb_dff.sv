/*
  tb_dff.sv
  Práctica #1 - Testbench mínimo (NO se sintetiza)

  - Genera reloj
  - Aplica estímulos deliberados a d y rst
  - Genera VCD para evidencias (waves.vcd)
*/

`timescale 1ns/1ps

module tb_dff;

  logic clk;
  logic rst;
  logic d;
  logic q;

  // Instancia del DUT
  dut_dff dut (
    .clk(clk),
    .rst(rst),
    .d(d),
    .q(q)
  );

  // Reloj: periodo 10ns (100MHz)
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Evidencia: waveform
  initial begin
    $dumpfile("waves.vcd");
    $dumpvars(0, tb_dff);
  end

  // Estímulos controlados
  initial begin
    // Estado inicial
    rst = 1;
    d   = 0;

    // 1) Soltar reset después de un rato
    #12;
    rst = 0;

    // 2) Cambios deliberados de d
    #7;   d = 1;
    #20;  d = 0;
    #20;  d = 1;

    // 3) Reset asíncrono en medio del ciclo (para ver su efecto inmediato)
    #13;  rst = 1;
    #10;  rst = 0;

    // 4) Más cambios
    #7;   d = 0;
    #20;  d = 1;

    #30;
    $display("Simulación terminada. Revisa waves.vcd");
    $finish;
  end

endmodule
