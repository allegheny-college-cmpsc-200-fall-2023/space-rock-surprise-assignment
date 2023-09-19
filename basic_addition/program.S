.thumb_func		    	@ Necessary because sdk uses BLX
.global main	   	 	@ Provide program starting address to linker

main:
	BL	stdio_init_all		@ initialize uart or usb
	@ TODO: Load addend1 into a register
	@ TODO: Load addend2 into a register

	@ TODO: Add addend2 register _TO_ addend1 register

	@ TODO: MOV the sum to R1

	@ TODO: Use BL to call printf

addend1:	.int		100
addend2:	.int		128 
sum: 		.asciz   	"SUM: %d\n"