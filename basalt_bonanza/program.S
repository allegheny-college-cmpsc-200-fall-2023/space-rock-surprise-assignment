.thumb_func		    	@ Necessary because sdk uses BLX
.global main	   	 	@ Provide program starting address to linker

main:
	BL	stdio_init_all		@ initialize uart or usb

@ TODO Traverse the string to add character bytes in the correct
@       order; this involves using a combination of ADD, STRB, LDRB

@ TODO Load the rockbox into R1 and run printf

loop:
	B  		loop

.data
	readout:	.asciz	"%s\n"
	rockbox:	.fill	17
	rock: 		.asciz	"blteas "