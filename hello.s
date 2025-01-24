// Markstedter 2023: p. 13 -- Write "Hello" to stdout
// This example is written in ARM32; to assemble on ARM64... 
// arm-linux-gnueabihf-as hello.s -o hello.o # create object file
// arm-linux-gnueabihf-ld hello.o -o hello # create binary executable
// ./hello
.section .text
.global _start

_start:
    mov r0, #1		// STDOUT
    adr r1, mystring	// R1 = address of string
    mov r2, #6		// R2 = size of string
    mov r7, #4		// R7 = syscall number for write()
    svc #0		// invoke syscall

_exit:
    mov r7, #1 // SK: r7=0 from book produces warning, exit system call is r7=1
    svc #0

mystring:
  .string "Hello\n"
