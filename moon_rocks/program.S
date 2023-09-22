.thumb_func		    	@ Necessary because sdk uses BLX
.global main	   	 	@ Provide program starting address

main:
	BL	stdio_init_all	@ initialize uart or usb

	@ Contents of sifter
	MOV	R2, #'M'
	MOV R3, #'N'
	MOV R4, #'O'
	MOV R5, #'R'
	MOV R6, #'K'
	MOV R7, #'C'
	@ End contents of sifter

@ TODO: Load the template string (rockbox)
@ TODO: Load the empty string (rock)

@ TODO: Use STRB and ADD instructions a reasonable amount of times
@       in order to move each letter to the emtpry placeholder string
@       _AND_ ADD one to the address of the next memory placeholder

	@ TODO: printf the resulting string
	SVC     0

.data
	rockbox: 	.asciz  "%s\n"
	rock:		.asciz	"        "