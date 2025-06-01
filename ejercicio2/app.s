	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

	.equ GPIO_BASE,      0x3f200000
	.equ GPIO_GPFSEL0,   0x00
	.equ GPIO_GPLEV0,    0x34

	.extern background
	.extern draw_snoopy
	.extern draw_grass
	.extern draw_cloud
	.extern funcion_delay
	.global main

main:
	// x0 contiene la direccion base del framebuffer
 	mov x20, x0	// Guarda la dirección base del framebuffer en x20
	//---------------- CODE HERE ------------------------------------

	// fondo
	mov x0, x20
	bl background
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass

	# nube
	mov x0, x20
	mov x1, #100    // xc
    mov x2, #100    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	movz x8, 0x3FA0, lsl 16 		// x8 -> Tiempo de delay 
	movk x8, 0xFFFF, lsl 00		
    bl funcion_delay

	//fondo
	mov x0, x20
	bl background
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass
	
	// nube
	mov x0, x20
	mov x1, #120    // xc
    mov x2, #100    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud
	
	movz x8, 0x3FA0, lsl 16 		// x8 -> Tiempo de delay 
	movk x8, 0xFFFF, lsl 00		
    bl funcion_delay

	//fondo
	mov x0, x20
	bl background
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass
	
	// nube
	mov x0, x20
	mov x1, #130    // xc
    mov x2, #100    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// think 1
	mov x0, x20
	mov x1, #230    // xc
    mov x2, #215    // yc
    mov x3, #5   // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	movz x8, 0x3FA0, lsl 16 		// x8 -> Tiempo de delay 
	movk x8, 0xFFFF, lsl 00		
    bl funcion_delay

	//fondo
	mov x0, x20
	bl background
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass
	
	// nube
	mov x0, x20
	mov x1, #140    // xc
    mov x2, #100    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	movz x8, 0x3FA0, lsl 16 		// x8 -> Tiempo de delay 
	movk x8, 0xFFFF, lsl 00		
    bl funcion_delay

	//fondo
	mov x0, x20
	bl background
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass
	
	// nube
	mov x0, x20
	mov x1, #150    // xc
    mov x2, #100    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud
	
	// think 2
	mov x0, x20
	mov x1, #215    // xc
    mov x2, #205   // yc
    mov x3, #7	  // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	movz x8, 0x3FA0, lsl 16 		// x8 -> Tiempo de delay 
	movk x8, 0xFFFF, lsl 00		
    bl funcion_delay

	//fondo
	mov x0, x20
	bl background
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass
	
	// nube
	mov x0, x20
	mov x1, #160    // xc
    mov x2, #100    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	movz x8, 0x3FA0, lsl 16 		// x8 -> Tiempo de delay 
	movk x8, 0xFFFF, lsl 00		
    bl funcion_delay

	//fondo
	mov x0, x20
	bl background
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass
	
	// nube
	mov x0, x20
	mov x1, #170    // xc
    mov x2, #100    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// think 3
	mov x0, x20
	mov x1, #200    // xc
    mov x2, #190    // yc
    mov x3, #10     // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle


InfLoop:
	b InfLoop
