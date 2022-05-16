// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
@8192
D=A
@len
M=D

(INPUT)
@KBD
D=M
@FILL
D;JGT
@CLEAR
0;JMP


(CLEAR)

@i
M=0

(CLOOP)
@len
D=M
@i
D=D-M
@INPUT
D;JEQ

@SCREEN
D=A
@i
A=D+M
M=0

@i
M=M+1

@CLOOP
0;JMP

(FILL)

@i
M=0

(FLOOP)
@len
D=M
@i
D=D-M
@INPUT
D;JEQ

@SCREEN
D=A
@i
A=D+M
M=-1

@i
M=M+1

@FLOOP
0;JMP