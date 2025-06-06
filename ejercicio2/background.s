	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32
    
.global background
background:
    //x0 framebuffer base
	movz x10, 0xFFAD, lsl 16
	movk x10, 0xD8E6, lsl 00

	mov x2, SCREEN_HEIGH         // Y Size
loop1:
	mov x1, SCREEN_WIDTH         // X Size
loop0:
	stur w10,[x0]  // Colorear el pixel N
	add x0,x0,4	   // Siguiente pixel
	sub x1,x1,1	   // Decrementar contador X
	cbnz x1,loop0  // Si no terminó la fila, salto
	sub x2,x2,1	   // Decrementar contador Y
	cbnz x2,loop1  // Si no es la última fila, salto
ret

.global background2
background2:
    // x0: framebuffer base
	movz x10, 0xFFAD, lsl 16    
	movk x10, 0xD8FF, lsl 0

	mov x2, SCREEN_HEIGH
loop1_b2:
	mov x1, SCREEN_WIDTH
loop0_b2:
	stur w10, [x0]
	add x0, x0, 4
	sub x1, x1, 1
	cbnz x1, loop0_b2
	sub x2, x2, 1
	cbnz x2, loop1_b2
	ret

.global background3
background3:
    // x0: framebuffer base
	movz x10, 0xFF00, lsl 16     
	movk x10, 0x0066, lsl 0

	mov x2, SCREEN_HEIGH
loop1_c2:
	mov x1, SCREEN_WIDTH
loop0_c2:
	stur w10, [x0]
	add x0, x0, 4
	sub x1, x1, 1
	cbnz x1, loop0_b2
	sub x2, x2, 1
	cbnz x2, loop1_b2
	ret	

.global background4
background4:
    // x0: framebuffer base
	movz x10, 0xFF00, lsl 16     
	movk x10, 0x0033, lsl 0

	mov x2, SCREEN_HEIGH
loop1_d2:
	mov x1, SCREEN_WIDTH
loop0_d2:
	stur w10, [x0]
	add x0, x0, 4
	sub x1, x1, 1
	cbnz x1, loop0_b2
	sub x2, x2, 1
	cbnz x2, loop1_b2
	ret
	