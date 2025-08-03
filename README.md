# 1-bit Comparator (Verilog)

## Description
1-bit comparator with inputs A and B:
- `o1 = 1` if A > B
- `o2 = -1` (signed 8-bit, all ones) if A == B
- `o3 = 1` if A < B

Includes testbench with waveform dump (`comp.vcd`).

## Files
- `one_bit_comparator.v`: comparator module
- `tb_one_bit_comparator.v`: testbench with VCD dumping
- `.gitignore`: ignores build/sim artifacts

## Simulation (using Icarus Verilog)
```bash
iverilog -o sim.out one_bit_comparator.v tb_one_bit_comparator.v
vvp sim.out
gtkwave comp.vcd
