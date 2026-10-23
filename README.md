# 200 Digital Logic Design — Verilog-2001 Testbench Pack

**Developer:** Ghulam Yaseen Nangraj  
**HDL:** Verilog-2001 only  
**Purpose:** Companion testbench and RTL archive for the supplied 200-question project.

## Contents

- `rtl/Medium/` — RTL for Challenges 001–050
- `rtl/Hard/` — RTL for Challenges 051–100
- `rtl/Very_Hard/` — RTL for Challenges 101–150
- `rtl/Advanced/` — RTL for Challenges 151–200
- `testbench/` — 200 numbered Verilog testbenches, one per DUT
- `docs/TESTBENCH_INDEX.md` — module, testbench, and challenge index
- `docs/VERIFICATION_LIMITATIONS.md` — verification scope and next steps

## Important verification note

The supplied RTL archive itself identifies a number of advanced modules as starter/reference implementations and notes that they are not all complete or verified implementations of their named architectures. Accordingly, the testbenches in this package are **commented deterministic smoke-test harnesses** that match each module's actual declared ports. They initialize inputs, apply repeatable stimulus, clock sequential designs, and display outputs when they change.

These smoke tests are useful for confirming that a DUT can be instantiated and observing basic response. They do **not** prove functional correctness and are not all self-checking scoreboards. Complex tasks such as UART/SPI/I²C, asynchronous FIFO, CDC handshakes, CRC, advanced arithmetic, arbiters, and pipelines need a dedicated protocol-aware reference model and assertions after their interface and behavioral specification is finalized.

## Simulation with Icarus Verilog

Run from the extracted project root. Example (use the actual file paths and module name for the selected question):

```sh
iverilog -g2001 -s tb_q001_implement_a_parameterized_2_to_1_multiplexer -o sim rtl/Medium/001_q001_implement_a_parameterized_2_to_1_multiplexer.v testbench/Medium/001_tb_q001_implement_a_parameterized_2_to_1_multiplexer.v
vvp sim
```

Use the matching `-s` top module and RTL/testbench paths for each question. In Vivado, add only the selected RTL and matching testbench to the simulation sources.

## Recommended verification workflow

1. Read the question in `docs/TESTBENCH_INDEX.md`.
2. Inspect the RTL module's ports and behavior before running its testbench.
3. Run the testbench and inspect console output and waveform.
4. Add task-specific expected-value checks and corner cases.
5. For sequential designs, check reset, enable, stalls, boundary values, and simultaneous events.
6. For CDC designs, use CDC analysis and correct constraints; simulation cannot model analog metastability.
7. Do not treat a smoke-test completion message as a pass/fail correctness result.
