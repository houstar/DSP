		.title "one.asm"
		.mmregs
STACK	.usect "STACK",10H
		.bss x,5
		.bss y,1
		.def start
		.data
table 	.word 10,20,3,5
		.text
start: 
		STM #0,	SWWSR
		STM #STACK+10H,sp
		STM #x,AR1
		RPT #4
		MVPD table,*AR1+
		LD #0,A
		CALL SUM
		
end:
		B end
SUM:
		STM #x,AR3
		STM #4,AR2
		
loop:
		ADD *AR3+,A
		BANZ loop,*AR2-
		
		STL A,*(y)
		RET
		.end
		
		
		
