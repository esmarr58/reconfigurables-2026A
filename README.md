# Práctica #1 — Validación por simulación (SystemVerilog)

## Objetivo
Validar un diseño digital sencillo usando simulación, construyendo un testbench mínimo y analizando el waveform como evidencia.

## Estructura
- `src/dut_dff.sv` → DUT (sí se sintetiza)
- `sim/tb_dff.sv`  → Testbench (NO se sintetiza)
- `waves.vcd`      → Evidencia temporal (se genera al simular)

## Requisitos (Linux)
- `iverilog` y `vvp`
- opcional: `gtkwave`

Instalación (Ubuntu/Debian):
```bash
sudo apt update
sudo apt install -y iverilog gtkwave
