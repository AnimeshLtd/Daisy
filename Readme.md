# Daisy

Daisy is a 16-bit computer equipped with a screen and a keyboard. It resembles
old school handheld computers like Gameboys, PDAs and mobile phones.

This project includes:
* a hardware platform,
* an assembler,
* a virtual machine,
* a programming language called DaisyScript,
* the DaisyScript compiler,
* a mini operating system written in DaisyScript

All these modules are built and tested using the hardware simulator shared here
at `Resource/Tools/HardwareSimulator.sh`. It starts a Java application so you'll
need Java runtime to run it.

### Why a simulator?
Because that is how hardware engineers build chips. First, the hardware is
designed, tested and optimised on a software simulator. Only once the design is
finalised, is the gate logic committed to silicon.

My goal for this project is to build a modern computer from scratch using first 
principles.