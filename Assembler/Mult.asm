// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

  @2 
  M=0   // Initialise result memory
  @1
  D=M
  @END
  D;JEQ  // If second number is 0, answer is 0, jump to end
  @3
  M=D   // Set counter to second number

(LOOP)
  @0
  D=M
  @END
  D;JEQ   // If first number is 0, answer is 0, jump to end
  @2
  M=M+D
  @3
  M=M-1
  @3
  D=M
  @END
  D;JLE  // Exit loop if counter is less than or equal to 0
  @LOOP
  0;JMP

(END)
  @END
  0;JMP
