
// ARM64 Assembly Program that prints "Hello World" to stdout
//
//
// X0-X2 - Parameters to Unix System Calls
// X16 - Mach (Apple's Kernel) System Call Function Number
//


.global _main			// Program Starting Address
.align 4			// Aligns the memory


// Setup the Parameters to Print Hello World
// Then call on the OS to execute through a Syscall


_main:
	mov	X0, #1		// 1 == stdout
	adr	X1, helloworld	// string to be printed
	mov	X2, #13		// Length of the string
	mov	X16, #4		// Write syscall
	svc	#0x80		// Syscall


// Syscall Exit
	mov	X0, #0		// Return Code
	mov	X16, #1		// Exit Service Code
	svc	0x80		// Syscall


helloworld:	.ascii	"Hello World!\n"
