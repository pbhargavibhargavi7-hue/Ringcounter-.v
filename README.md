4-Bit Ring Counter Using Verilog HDL

📌 Project Overview

A Ring Counter is a type of shift register in which the output of the last flip-flop is connected back to the input of the first flip-flop.

In a 4-bit Ring Counter, a single "1" circulates through the four flip-flops.

The sequence is:

1000 → 0100 → 0010 → 0001 → 1000 → ...

This project implements a 4-bit Ring Counter using Verilog HDL.

🎯 Objectives

- Understand the working principle of a Ring Counter.
- Design a 4-bit Ring Counter using Verilog HDL.
- Implement clock and reset functionality.
- Verify the counter using a testbench.
- Observe the counter sequence using waveform simulation.

⚙️ Specifications

Parameter| Value
Counter Type| Ring Counter
Number of Bits| 4
Clock| Positive Edge
Reset| Active High
HDL| Verilog

🔌 Inputs

- "clk" – Clock signal
- "rst" – Reset signal

🔌 Output

- "q[3:0]" – 4-bit counter output

🧠 Working Principle

The Ring Counter works by shifting a single "1" through the register.

After reset, the counter is initialized to:

1000

At every positive edge of the clock, the "1" moves to the next position.

Counter Sequence

Clock 0 → 1000
Clock 1 → 0100
Clock 2 → 0010
Clock 3 → 0001
Clock 4 → 1000
Clock 5 → 0100

The sequence repeats continuously.

📊 Truth Table

Clock| Q3| Q2| Q1| Q0
Reset| 1| 0| 0| 0
1| 0| 1| 0| 0
2| 0| 0| 1| 0
3| 0| 0| 0| 1
4| 1| 0| 0| 0

📂 Project Files

README.md
ring_counter.v
ring_counter_tb.v
simulation/
    ring_counter_waveform.png

"ring_counter.v"

Contains the RTL design of the 4-bit Ring Counter.

"ring_counter_tb.v"

Contains the testbench used to verify the Ring Counter.

"ring_counter_waveform.png"

Contains the simulation waveform.

🧪 Simulation

The project can be simulated using:

- Icarus Verilog
- GTKWave
- ModelSim
- QuestaSim
- Vivado

Icarus Verilog Commands

Compile the design:

iverilog -o ring_sim ring_counter.v ring_counter_tb.v

Run the simulation:

vvp ring_sim

This generates:

ring_counter.vcd

Open the waveform using:

gtkwave ring_counter.vcd

✅ Expected Result

The Ring Counter should produce the following sequence:

1000
0100
0010
0001
1000
0100
0010
0001

Therefore, the single "1" continuously circulates through the four flip-flops.

🌐 Applications

Ring Counters are used in:

- Sequence generators
- Timing circuits
- Digital control systems
- Frequency division
- LED pattern generation
- State machine applications
- Digital counters

🏁 Conclusion

A 4-bit Ring Counter was successfully designed using Verilog HDL. The simulation verifies that a single "1" circulates through the four bits continuously with every clock pulse.

Author

Bhargavi
