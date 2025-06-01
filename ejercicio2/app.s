	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

	.equ GPIO_BASE,      0x3f200000
	.equ GPIO_GPFSEL0,   0x00
	.equ GPIO_GPLEV0,    0x34

	.extern background
	.extern draw_snoopy
	.extern draw_dream
	.extern funcion_delay
	.global main

main:
	// x0 contiene la direccion base del framebuffer
 	mov x20, x0	// Guarda la dirección base del framebuffer en x20
	//---------------- CODE HERE ------------------------------------
	mov x0, x20
	bl background
	mov x0, x20
	bl draw_snoopy

	movz x8, 0x3FA0, lsl 16 		// x8 -> Tiempo de delay 
	movk x8, 0xFFFF, lsl 00		
    bl funcion_delay

	mov x0, x20
	mov x1, #225    // xc
    mov x2, #225    // yc
    mov x3, #8   // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	movz x8, 0x3FA0, lsl 16 		// x8 -> Tiempo de delay 
	movk x8, 0xFFFF, lsl 00		
    bl funcion_delay

	mov x0, x20
	mov x1, #210    // xc
    mov x2, #210    // yc
    mov x3, #12     // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

InfLoop:
	b InfLoop
