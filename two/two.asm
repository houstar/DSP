		.title 	"two.asm"
		.mmregs
size 	.set 	100
stack 	.usect "STK",size
		.bss 	length,10H
		.def 	start
		.text
start:
		STM #0,SWWSR
		STM #stack+size,SP
		LD #-8531,A
		STM #(length-0fa0),AR1
		MVMM SP,AR7
loop:
		STL A,*AR7-
		BANZ loop,*AR1-
		.end
		