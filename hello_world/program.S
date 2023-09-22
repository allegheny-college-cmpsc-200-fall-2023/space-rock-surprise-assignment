.thumb_func		    	@ Necessary because sdk uses BLX
.global main	   	 	@ Provide program starting address

main:
	BL	stdio_init_all	@ initialize uart or usb
@ TODO: Load helloworld into memory
@ TODO: use BL instruction to call printf
	SVC	0				@ Service call to end program
	
helloworld: 	.asciz  "Hello, World!\n"