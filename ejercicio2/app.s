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
	.extern sun
	.extern draw_dream_1
	.extern draw_dream_2
	.extern draw_odc2025
	.extern background2
	.extern background3
	.extern background4
	.global main

main:
	// x0 contiene la direccion base del framebuffer
 	mov x20, x0	// Guarda la dirección base del framebuffer en x20

	
	// FONDO 
	mov x0, x20
	bl background
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass_1
    mov x0, x20       
	bl sun

	// NUBE 
	mov x0, x20
	mov x1, #80    // xc
    mov x2, #50    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// NUBE 2
	mov x0, x20
	mov x1, #250    // xc
    mov x2, #90    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

// FRAME 1
	// FONDO 
	mov x0, x20
	bl background
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass_2
	mov x0, x20       
	bl sun
	
	// NUBE 
	mov x0, x20
	mov x1, #100    // xc
    mov x2, #50    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// NUBE 2
	mov x0, x20
	mov x1, #270    // xc
    mov x2, #90    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	movz x8, 0x3FA0, lsl 16 		// x8 -> Tiempo de delay 
	movk x8, 0xFFFF, lsl 00		
    bl funcion_delay

// FRAME 2
	// FONDO 
	mov x0, x20
	bl background
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass_3
	mov x0, x20       
	bl sun
	
	// NUBE 
	mov x0, x20
	mov x1, #120    // xc
    mov x2, #50    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// NUBE 2
	mov x0, x20
	mov x1, #290    // xc
    mov x2, #90    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// PENSAMIENTO 1
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

// FRAME 3
	// FONDO 
	mov x0, x20
	bl background
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass_2
	mov x0, x20       
	bl sun
	
	// NUBE 
	mov x0, x20
	mov x1, #140    // xc
    mov x2, #50    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// NUBE 2
	mov x0, x20
	mov x1, #310    // xc
    mov x2, #90    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// PENSAMIENTO 1
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

// FRAME 4 
	// FONDO
	mov x0, x20
	bl background
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass_1
	mov x0, x20       
	bl sun
	
	// NUBE
	mov x0, x20
	mov x1, #160    // xc
    mov x2, #50    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// NUBE 2
	mov x0, x20
	mov x1, #330    // xc
    mov x2, #90    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud
	
	// PENSAMIENTO 1
	mov x0, x20
	mov x1, #230    // xc
    mov x2, #215    // yc
    mov x3, #5   // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 2
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

// FRAME 5 
	// FONDO
	mov x0, x20
	bl background2
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass_2
	mov x0, x20       
	bl sun
	
	// NUBE
	mov x0, x20
	mov x1, #180    // xc
    mov x2, #50    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// NUBE 2
	mov x0, x20
	mov x1, #350    // xc
    mov x2, #90    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// PENSAMIENTO 1
	mov x0, x20
	mov x1, #230    // xc
    mov x2, #215    // yc
    mov x3, #5   // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 2
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

// FRAME 6
	// FONDO
	mov x0, x20
	bl background2
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass_3
	mov x0, x20       
	bl sun
	
	// NUBE
	mov x0, x20
	mov x1, #200    // xc
    mov x2, #50    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// NUBE 2
	mov x0, x20
	mov x1, #370    // xc
    mov x2, #90    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// PENSAMIENTO 1
	mov x0, x20
	mov x1, #230    // xc
    mov x2, #215    // yc
    mov x3, #5   // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 2
	mov x0, x20
	mov x1, #215    // xc
    mov x2, #205   // yc
    mov x3, #7	  // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 3
	mov x0, x20
	mov x1, #200    // xc
    mov x2, #190    // yc
    mov x3, #10     // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	movz x8, 0x3FA0, lsl 16 		// x8 -> Tiempo de delay 
	movk x8, 0xFFFF, lsl 00		
    bl funcion_delay

// FRAME 7 
	// FONDO
	mov x0, x20
	bl background2
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass_2
	mov x0, x20       
	bl sun
	
	// NUBE
	mov x0, x20
	mov x1, #220    // xc
    mov x2, #50    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// NUBE 2
	mov x0, x20
	mov x1, #390    // xc
    mov x2, #90    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// PENSAMIENTO 1
	mov x0, x20
	mov x1, #230    // xc
    mov x2, #215    // yc
    mov x3, #5   // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 2
	mov x0, x20
	mov x1, #215    // xc
    mov x2, #205   // yc
    mov x3, #7	  // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 3
	mov x0, x20
	mov x1, #200    // xc
    mov x2, #190    // yc
    mov x3, #10     // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PRE DREAM
	mov x0, x20
	mov x1, #160    // xc
    mov x2, #170    // yc
    mov x3, #12     // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	movz x8, 0x3FA0, lsl 16 		// x8 -> Tiempo de delay 
	movk x8, 0xFFFF, lsl 00		
    bl funcion_delay

// FRAME 8 
	// FONDO
	mov x0, x20
	bl background3
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass_1
	mov x0, x20       
	bl sun
	
	// NUBE
	mov x0, x20
	mov x1, #240    // xc
    mov x2, #50    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// NUBE 2
	mov x0, x20
	mov x1, #410    // xc
    mov x2, #90    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// PENSAMIENTO 1
	mov x0, x20
	mov x1, #230    // xc
    mov x2, #215    // yc
    mov x3, #5   // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 2
	mov x0, x20
	mov x1, #215    // xc
    mov x2, #205   // yc
    mov x3, #7	  // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 3
	mov x0, x20
	mov x1, #200    // xc
    mov x2, #190    // yc
    mov x3, #10     // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 4
	mov x0, x20
	bl draw_dream_1

	movz x8, 0x3FA0, lsl 16 		// x8 -> Tiempo de delay 
	movk x8, 0xFFFF, lsl 00		
    bl funcion_delay

// FRAME 9
	// FONDO
	mov x0, x20
	bl background3
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass_2
	mov x0, x20       
	bl sun
	
	// NUBE
	mov x0, x20
	mov x1, #260    // xc
    mov x2, #50    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// NUBE 2
	mov x0, x20
	mov x1, #430    // xc
    mov x2, #90    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// PENSAMIENTO 1
	mov x0, x20
	mov x1, #230    // xc
    mov x2, #215    // yc
    mov x3, #5   // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 2
	mov x0, x20
	mov x1, #215    // xc
    mov x2, #205   // yc
    mov x3, #7	  // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 3
	mov x0, x20
	mov x1, #200    // xc
    mov x2, #190    // yc
    mov x3, #10     // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 5
	mov x0, x20
	bl draw_dream_2

	movz x8, 0x3FA0, lsl 16 		// x8 -> Tiempo de delay 
	movk x8, 0xFFFF, lsl 00		
    bl funcion_delay

// FRAME 10
	// FONDO
	mov x0, x20
	bl background4
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass_3
	mov x0, x20       
	bl moon
	
	// NUBE
	mov x0, x20
	mov x1, #280    // xc
    mov x2, #50    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// NUBE 2
	mov x0, x20
	mov x1, #450    // xc
    mov x2, #90    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// PENSAMIENTO 1
	mov x0, x20
	mov x1, #230    // xc
    mov x2, #215    // yc
    mov x3, #5   // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 2
	mov x0, x20
	mov x1, #215    // xc
    mov x2, #205   // yc
    mov x3, #7	  // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 3
	mov x0, x20
	mov x1, #200    // xc
    mov x2, #190    // yc
    mov x3, #10     // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 5
	mov x0, x20
	bl draw_dream_2

	// CARTEL ODC
	mov x0, x20
	bl draw_odc2025

	movz x8, 0x3FA0, lsl 16 		// x8 -> Tiempo de delay 
	movk x8, 0xFFFF, lsl 00		
    bl funcion_delay

// FRAME 11
	// FONDO
	mov x0, x20
	bl background4
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass_2
	mov x0, x20       
	bl moon
	
	// NUBE
	mov x0, x20
	mov x1, #300    // xc
    mov x2, #50    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// NUBE 2
	mov x0, x20
	mov x1, #470    // xc
    mov x2, #90    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// PENSAMIENTO 1
	mov x0, x20
	mov x1, #230    // xc
    mov x2, #215    // yc
    mov x3, #5   // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 2
	mov x0, x20
	mov x1, #215    // xc
    mov x2, #205   // yc
    mov x3, #7	  // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 3
	mov x0, x20
	mov x1, #200    // xc
    mov x2, #190    // yc
    mov x3, #10     // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 5
	mov x0, x20
	bl draw_dream_2

	// CARTEL ODC
	mov x0, x20
	bl draw_odc2025

	movz x8, 0x3FA0, lsl 16 		// x8 -> Tiempo de delay 
	movk x8, 0xFFFF, lsl 00		
    bl funcion_delay

// FRAME 12
	// FONDO
	mov x0, x20
	bl background4
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass_1
	mov x0, x20       
	bl moon
	
	// NUBE
	mov x0, x20
	mov x1, #320    // xc
    mov x2, #50    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// NUBE 2
	mov x0, x20
	mov x1, #490    // xc
    mov x2, #90    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// PENSAMIENTO 1
	mov x0, x20
	mov x1, #230    // xc
    mov x2, #215    // yc
    mov x3, #5   // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 2
	mov x0, x20
	mov x1, #215    // xc
    mov x2, #205   // yc
    mov x3, #7	  // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 3
	mov x0, x20
	mov x1, #200    // xc
    mov x2, #190    // yc
    mov x3, #10     // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 5
	mov x0, x20
	bl draw_dream_2

	movz x8, 0x3FA0, lsl 16 		// x8 -> Tiempo de delay 
	movk x8, 0xFFFF, lsl 00		
    bl funcion_delay

// FRAME 13
	// FONDO
	mov x0, x20
	bl background4
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass_2
	mov x0, x20       
	bl moon
	
	// NUBE
	mov x0, x20
	mov x1, #340    // xc
    mov x2, #50    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// NUBE 2
	mov x0, x20
	mov x1, #510    // xc
    mov x2, #90    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// PENSAMIENTO 1
	mov x0, x20
	mov x1, #230    // xc
    mov x2, #215    // yc
    mov x3, #5   // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 2
	mov x0, x20
	mov x1, #215    // xc
    mov x2, #205   // yc
    mov x3, #7	  // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 3
	mov x0, x20
	mov x1, #200    // xc
    mov x2, #190    // yc
    mov x3, #10     // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 4
	mov x0, x20
	bl draw_dream_1

	movz x8, 0x3FA0, lsl 16 		// x8 -> Tiempo de delay 
	movk x8, 0xFFFF, lsl 00		
    bl funcion_delay

// FRAME 14
	// FONDO
	mov x0, x20
	bl background4
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass_3
	mov x0, x20       
	bl moon
	
	// NUBE
	mov x0, x20
	mov x1, #360    // xc
    mov x2, #50    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// NUBE 2
	mov x0, x20
	mov x1, #530    // xc
    mov x2, #90    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// PENSAMIENTO 1
	mov x0, x20
	mov x1, #230    // xc
    mov x2, #215    // yc
    mov x3, #5   // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 2
	mov x0, x20
	mov x1, #215    // xc
    mov x2, #205   // yc
    mov x3, #7	  // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 3
	mov x0, x20
	mov x1, #200    // xc
    mov x2, #190    // yc
    mov x3, #10     // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PRE DREAM
	mov x0, x20
	mov x1, #160    // xc
    mov x2, #170    // yc
    mov x3, #12     // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	movz x8, 0x3FA0, lsl 16 		// x8 -> Tiempo de delay 
	movk x8, 0xFFFF, lsl 00		
    bl funcion_delay	

// FRAME 15
	// FONDO
	mov x0, x20
	bl background4
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass_2
	mov x0, x20       
	bl moon
	
	// NUBE
	mov x0, x20
	mov x1, #380    // xc
    mov x2, #50    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// NUBE 2
	mov x0, x20
	mov x1, #550    // xc
    mov x2, #90    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// PENSAMIENTO 1
	mov x0, x20
	mov x1, #230    // xc
    mov x2, #215    // yc
    mov x3, #5   // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 2
	mov x0, x20
	mov x1, #215    // xc
    mov x2, #205   // yc
    mov x3, #7	  // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 3
	mov x0, x20
	mov x1, #200    // xc
    mov x2, #190    // yc
    mov x3, #10     // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	movz x8, 0x3FA0, lsl 16 		// x8 -> Tiempo de delay 
	movk x8, 0xFFFF, lsl 00		
    bl funcion_delay

// FRAME 16
	// FONDO
	mov x0, x20
	bl background4
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass_1
	mov x0, x20       
	bl moon
	
	// NUBE
	mov x0, x20
	mov x1, #400    // xc
    mov x2, #50    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// NUBE 2
	mov x0, x20
	mov x1, #570    // xc
    mov x2, #90    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// PENSAMIENTO 1
	mov x0, x20
	mov x1, #230    // xc
    mov x2, #215    // yc
    mov x3, #5   // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

	// PENSAMIENTO 2
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
	
// FRAME 17
	// FONDO
	mov x0, x20
	bl background4
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass_2
	mov x0, x20       
	bl moon
	
	// NUBE
	mov x0, x20
	mov x1, #420// xc
    mov x2, #50    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// NUBE 2
	mov x0, x20
	mov x1, #590    // xc
    mov x2, #90    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// PENSAMIENTO 1
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

// FRAME 18
	// FONDO
	mov x0, x20
	bl background4
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass_3
	mov x0, x20       
	bl moon
	
	// NUBE
	mov x0, x20
	mov x1, #440// xc
    mov x2, #50    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// NUBE 2
	mov x0, x20
	mov x1, #610    // xc
    mov x2, #90    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	movz x8, 0x3FA0, lsl 16 		// x8 -> Tiempo de delay 
	movk x8, 0xFFFF, lsl 00		
    bl funcion_delay

// FRAME 19
	// FONDO
	mov x0, x20
	bl background4
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass_2
	mov x0, x20       
	bl moon
	
	// NUBE
	mov x0, x20
	mov x1, #460	// xc
    mov x2, #50    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// NUBE 2
	mov x0, x20
	mov x1, #630    // xc
    mov x2, #90    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	movz x8, 0x3FA0, lsl 16 		// x8 -> Tiempo de delay 
	movk x8, 0xFFFF, lsl 00		
    bl funcion_delay

// FRAME 19
	// FONDO
	mov x0, x20
	bl background4
	mov x0, x20
	bl draw_snoopy
	mov x0, x20
	bl draw_grass_1
	mov x0, x20       
	bl moon
	
	// NUBE
	mov x0, x20
	mov x1, #480	// xc
    mov x2, #50    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	// NUBE 2
	mov x0, x20
	mov x1, #650    // xc
    mov x2, #90    // yc
    movz x3, 0xFFFF, lsl 16 // color
    movk x3, 0xFFFF, lsl 0  //
    bl draw_cloud

	movz x8, 0x3FA0, lsl 16 		// x8 -> Tiempo de delay 
	movk x8, 0xFFFF, lsl 00		
    bl funcion_delay

InfLoop:
	b InfLoop
