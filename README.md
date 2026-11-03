# UEC612 Digital System Design

Verilog HDL lab work for UEC612, covering Boolean logic, combinational datapaths, sequential circuits, and FPGA-oriented designs. Experiment folders contain the design sources and testbenches; available waveforms and schematics are kept alongside each experiment.

## Experiments

| No. | Design | Folder |
|---:|---|---|
| 1 | Four-input Boolean logic network | [`Experiment1_HalfAdder`](Experiment1_HalfAdder/) |
| 2 | 4:1 multiplexer, behavioral and structural versions | [`Experiment2_MUX_41`](Experiment2_MUX_41/) |
| 3 | 4-bit ripple-carry adder | [`Experiment3_RCA`](Experiment3_RCA/) |
| 4 | 4-bit arithmetic logic unit | [`Experiment4_ALU`](Experiment4_ALU/) |
| 5 | 4-bit serial-in, parallel-out shift register | [`Experiment5_SIPO`](Experiment5_SIPO/) |
| 6 | FPGA-oriented SIPO with a clock divider | [`Experiment6_SIPO_FPGA_Implementation`](Experiment6_SIPO_FPGA_Implementation/) |

The `Experiment1_HalfAdder` folder name is historical: its design has four inputs and one output, rather than the sum and carry outputs of a conventional half adder.

## Run a simulation

Install [Icarus Verilog](https://github.com/steveicarus/iverilog) and make sure `iverilog` and `vvp` are available on your `PATH`. From the repository root, compile and run the ripple-carry-adder testbench:

```sh
iverilog -g2005 -s TB_RCA -o rca.vvp Experiment3_RCA/FA.v Experiment3_RCA/RCA.v Experiment3_RCA/TB_RCA.v
vvp rca.vvp
```

Choose the testbench top and source files for the experiment you want to run:

| Testbench top | Design and testbench files (from repository root) |
|---|---|
| `TestBenchEXP1` | `Experiment1_HalfAdder/Implementing_BooleanEXPE1.v`, `Experiment1_HalfAdder/TestBenchEXP1.v` |
| `tb_mux` (behavioral) | `Experiment2_MUX_41/Behavioural/behaviour_Mux.v`, `Experiment2_MUX_41/Behavioural/behaviour_TB_Mux.v` |
| `tb_mux` (structural) | `Experiment2_MUX_41/Structural/structural_mux.v`, `Experiment2_MUX_41/Structural/structural_tb_mux.v` |
| `TB_RCA` | `Experiment3_RCA/FA.v`, `Experiment3_RCA/RCA.v`, `Experiment3_RCA/TB_RCA.v` |
| `ALU_tb` | `Experiment4_ALU/ALU.v`, `Experiment4_ALU/TB_ALU.v` |
| `SIPO_tb` | `Experiment5_SIPO/DFF.v`, `Experiment5_SIPO/SIPO.v`, `Experiment5_SIPO/SIPO_tb.v` |
| `FPGA_SIPO_tb` | `Experiment6_SIPO_FPGA_Implementation/FPGA_DFF.v`, `Experiment6_SIPO_FPGA_Implementation/FPGA_SIPO.v`, `Experiment6_SIPO_FPGA_Implementation/FPGA_SIPO_tb.v` |

Compile the behavioral and structural multiplexer variants separately; both use the same module and testbench names.

## Use with Vivado

This repository provides HDL sources and selected XDC files, but no preconfigured Vivado project. Create an RTL project for the target device, add one design's Verilog files to **Design Sources**, and add its testbench to **Simulation Sources**. Set the design module as the synthesis top and the testbench module as the simulation top.

The XDC files include package-pin assignments, but the repository does not identify the target FPGA board or specify a clock period. Check every pin and clock assumption against your board before running implementation. The FPGA SIPO divider's output rate depends on its input clock.
