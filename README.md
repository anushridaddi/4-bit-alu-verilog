# 4-Bit ALU using Verilog

This project is a simple 4-bit Arithmetic Logic Unit (ALU) designed and simulated using Verilog HDL.

I built this project to understand how different arithmetic and logic operations can be selected using control inputs and how the output changes during simulation.

## What is an ALU?

An Arithmetic Logic Unit (ALU) is a digital circuit that performs arithmetic and logical operations on binary data.

In this project, the ALU takes two 4-bit inputs, A and B, and performs different operations depending on the 3-bit select input sel.

## Operations Implemented

| sel | Operation | Description |
|------|-----------|-------------|
| 000 | ADD | A + B |
| 001 | SUB | A - B |
| 010 | AND | A & B |
| 011 | OR | A \| B |
| 100 | XOR | A ^ B |
| 101 | XNOR | ~(A ^ B) |
| Others | Default | Output set to 0 |

The exact operation is selected using a case statement based on the value of sel.

## How It Works

The ALU has:

- Two 4-bit inputs: A and B
- One 3-bit select input: sel
- One 4-bit output: result
- One carry output: cout

The sel input acts like a control signal. When its value changes, the ALU selects a different operation.

For example:

- If sel = 000, addition is performed.
- If sel = 001, subtraction is performed.
- If sel = 010, AND operation is performed.
- If sel = 011, OR operation is performed.

This helped me understand how multiple operations can be combined into one digital block and selected using control inputs.

## Arithmetic Operations

### Addition

For addition:

result = A + B

If the addition produces a carry beyond 4 bits, it is represented by the cout output.

For example:

1111 + 0001 = 1 0000

Here:

- result = 0000
- cout = 1

### Subtraction

For subtraction:

result = A - B

The 4-bit result represents the lower four bits of the subtraction result.

## Logic Operations

The ALU also performs bitwise logical operations:

- AND compares corresponding bits of A and B.
- OR gives 1 when at least one corresponding bit is 1.
- XOR gives 1 when the corresponding bits are different.
- XNOR gives 1 when the corresponding bits are the same.

These operations helped me understand how Verilog represents bitwise digital logic.

## Simulation and Waveform

I tested the ALU using a separate Verilog testbench and checked the outputs using the EDA Playground waveform viewer.

The testbench changes A, B, and sel for different test cases. The waveform shows how the result and cout outputs respond to these inputs.

### What I verified from the waveform

1. The sel value changes the operation being performed.
2. The result changes according to the selected operation.
3. Addition produces a carry when the result exceeds 4 bits.
4. Logic operations produce the expected bitwise results.
5. The output responds when the input values or select signal change.

The waveform was important because it allowed me to verify the actual behaviour of my Verilog design instead of checking only the code.

## Testbench

The testbench was written to apply multiple combinations of:

- A
- B
- sel

Each test case is given enough simulation time to observe the corresponding output.

I used different input combinations instead of testing only one example so that the different ALU operations could be verified.

## Verilog Concepts I Practiced

Through this project, I practiced:

- Verilog module structure
- Input and output declarations
- 4-bit and 3-bit signals
- reg and wire
- always blocks
- case statements
- Arithmetic operators
- Bitwise logical operators
- Testbench creation
- Applying test inputs using delays
- Simulation
- Reading digital waveforms
- Understanding sel as a control signal

## My Learning

This project helped me connect the digital electronics concepts I learned earlier with actual Verilog HDL implementation.

I understood that an ALU is not just a collection of separate operations. The important part is how a control signal such as sel selects which operation should be applied to the inputs.

I also learned how to use a testbench to verify a design and how to read the waveform to check whether the output matches the selected operation.

## Tools Used

- Verilog HDL
- EDA Playground
- Icarus Verilog
- EPWave waveform viewer

## Files

- alu_4bit.v – ALU design
- alu_4bit_tb.v – Testbench
- waveform.png – Simulation waveform

## Future Improvement

As a next step, I would like to extend this project with more operations and eventually explore how an ALU can be used as a basic building block of a processor datapath.

## Conclusion

This 4-bit ALU project was a useful step in my Verilog learning journey. It helped me move from individual digital circuits to a design that combines arithmetic and logic operations under a common control signal.
