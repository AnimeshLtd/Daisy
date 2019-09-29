# Resources

- The `Tools` directory contains the `nand2tetris` software tools. It's a 
  collection of programs and files explained in detail below. 
 
- The `.bat` and `.sh` files are batch and script files, used to invoke the 
  `nand2tetris` software tools. These files are explained in detail below.
 
- The `bin` directory contains the code of the nand2tetris software tools. It 
  consists of several subdirectories containing Java class files and supporting 
  files.
 
- The `builtInChips` and the `builtInVMCode` directories contain files that are 
  used by the supplied Hardware Simulator and VM Emulator, respectively.
 
- The `OS` directory contains a compiled version of the Jack operating system.

## Tools

See the [Tutorials](Tutorials) directory for user manuals.

### Hardware Simulator
Simulates and tests logic gates and chips implemented in the HDL (Hardware 
Description Language) described in the project. Used in hardware construction 
projects.

### CPU Emulator
Emulates the operation of the Hack computer system. Used to test and run 
programs written in the Hack machine language, in both its binary and assembly
versions.

### VM Emulator
Emulates the operation of our virtual machine (similar to Java's JVM); used to 
run and test programs written in the VM language (similar to Java's Bytcode).

### Assembler
Translates programs from the Hack assembly language to Hack binary code. The 
resulting code can be executed directly on the Computer chip (in the hardware 
simulator), or emulated on the supplied CPU Emulator (much faster and more 
convenient).

### Compiler
Translates programs written in Jack (a simple, Java-like object-based language) 
into VM code. The resulting code can run on the supplied VM Emulator. 
Alternatively, the VM code can be translated further by the supplied VM 
translator into Hack assembly code that can then be executed on the supplied CPU 
Emulator.

### Operating System
Two OS implementations are supplied: (i) a collection of eight `.vm` class files, 
written originally in Jack (just like Unix is written in C), and (ii) a faster 
implementation of all the OS services, embedded in the supplied VM Emulator.

### Text Comparer
This utility checks if two input text files are identical, up to white space 
differences. Used in various projects. In Unix use `diff` instead.