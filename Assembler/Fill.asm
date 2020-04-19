// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

@R0
M=-1         // Counter to fill 

(LOOP)
  @KBD
  D=M
  @DARKEN
  D;JGT
  @LIGHTEN
  D;JEQ

(DARKEN)
  // Skip the loop if word counter has reached 8191. Means all pixels have been darkened.
  @8191
  D=A
  @R0
  D=D-M
  @LOOP
  D;JEQ

  @R0
  M=M+1

  @SCREEN
  D=A
  @R0
  A=D+M
  M=-1        // -1 is binary 1111111111111111; turns on all pixels powered by the word
  @LOOP
  0;JMP
  
(LIGHTEN)
  // Skip the loop if word counter is less than 0. Means no darkened pixels exist.
  @R0
  D=M
  @LOOP
  D;JLT

  // Lighten the darkened pixels
  @SCREEN
  D=A
  @R0
  A=D+M
  M=0         // 0 is binary 0000000000000000; turns off all pixels powered by the word
  @R0
  M=M-1
  @LOOP
  0;JMP
