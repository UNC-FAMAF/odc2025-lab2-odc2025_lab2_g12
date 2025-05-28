	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

	.equ GPIO_BASE,      0x3f200000
	.equ GPIO_GPFSEL0,   0x00
	.equ GPIO_GPLEV0,    0x34

	.globl main
	.extern draw_circle
	.extern draw_rectangle
	.extern coord_to_addr
	.extern background
	.extern draw_snoopy
	.extern draw_grass
	.extern draw_grass_hair

main:
 	mov x20, x0	// Guarda la dirección base del framebuffer en x20

	// PINTAR FONDO 
	mov x0, x20
	bl background

	//SOL
    mov x0, x20       // restaurar framebuffer base
    mov x1, #610      // centro x
    mov x2, #15      // centro y
    mov x3, #80       // radio
    movz x4, 0xFFFF, lsl 16
    movk x4, 0xFF00, lsl 0 // amarillo: 0xFFFFFF00
    bl draw_circle

	// DIBUJO DE SNOOPY
	mov x0, x20      
	bl draw_snoopy   
	
	// CESPED
	mov x0, x20
	bl draw_grass
	
InfLoop:
	b InfLoop
