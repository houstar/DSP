/* one.cmd*/
vectors.obj
one.obj
-o one.out
-m one.map
-estart
MEMORY
{
	PAGE 0:
		EPROM:org=0090H len=0F70H
		VECS:org=0080H len=0010H
	PAGE 1:
		SPRAM:org=1000H len=1000H
		DARAM:org=2000H len=2000H
}

SECTIONS
{
	.text :>EPROM PAGE 0
	.data :>EPROM PAGE 0
	.bss  :>SPRAM PAGE 1
	.STACK :>DARAM PAGE 1
	.vectors :>VECS PAGE 0
}
