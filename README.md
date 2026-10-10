# 8-Bit CPU Architecture

A simple 8-bit Central Processing Unit (CPU) design using Verilog HDL.

## Project Overview

This project demonstrates the organization of an 8-bit CPU using Verilog HDL, including instruction execution, registers, an ALU, and control logic as implemented in the design.

## Objectives
- Understand the internal organization of an 8-bit CPU.
- Design hardware modules using Verilog HDL.
- Learn instruction fetch, decode, and execute stages.
- Simulate and verify the design.

## Typical Components
- Control Unit
- Arithmetic Logic Unit (ALU)
- Registers
- Program Counter (PC)
- Instruction Register (IR)
- Memory / RAM
- Clock and Reset
## Instruction Set Architecture
NOP — No operation

LDI — Load immediate

LD — Load from RAM

ST — Store to RAM

ADD — Addition
SUB — Subtraction
AND — Bitwise AND
OR — Bitwise OR
XOR — Bitwise XOR
NOT — Bitwise NOT
SHL — Shift left
SHR — Shift right
CMP — Compare
JMP — Unconditional jump
JZ — Jump if zero
HLT — Halt

## Instruction Cycle
1. Fetch the instruction.
2. Decode the opcode.
3. Execute the operation.
4. Store the result and update the CPU state.

## Tools
- Verilog HDL
- Verilog simulator (specify the tool you used)

## Results
Add your verified simulation results, supported instructions, and waveforms here.
## Contributors

- **Hariharan VT** — Project design and implementation
- **Sabarna P** — Testing and verification
- **Kaleeswar** — Documentation and project support
