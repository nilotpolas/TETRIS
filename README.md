# TETRIS: Automated Design Space Exploration of Randomness-Latency Trade-offs in Masked Hardware

**TETRIS** is a software-level Design Space Exploration (DSE) framework for optimizing gadget-based masked cryptographic hardware. Given a user's constraints on randomness or latency, TETRIS automatically finds an optimal gadget assignment that minimizes the other parameter, producing secure masked hardware with reduced area overhead.


## Features

- Two dual DSE algorithms: **MLRC** (Minimize Latency under Randomness Constraints) and **MRLC** (Minimize Randomness under Latency Constraints)
- Support for PINI gadgets: HPC1, HPC2, HPC3, HPC2o, HPC3o, and COMAR
- Asymmetric gadget packing optimizations (Transforms 1–4)
- Integration with [MaskedHLS](https://github.com/nilotpolas/MaskedHLS_LP) for secure RTL generation
- Sub-millisecond DSE runtime on standard benchmarks

## Code Availability

**The full source code is currently being prepared for release as part of the TCHES artifact evaluation process.** It will be made available in this repository shortly. 

## Benchmarks

The following benchmarks are evaluated in the paper:

- AES S-box (Boyar and Peralta)
- AES S-box (Canright)
- SKINNY 8-bit S-box


## License

Details will be added upon code release.

## Contact

For questions, please contact the authors at:  
`s.nilotpola@iitg.ac.in`
