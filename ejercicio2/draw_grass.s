	.equ SCREEN_WIDTH,   640
	.equ SCREEN_HEIGHT,   480
    .equ BITS_PER_PIXEL , 32
	.extern draw_rectangle

    // Cubre desde la coordenada (0, 419) hasta (639, 479), es decir, 61 píxeles de alto
.global draw_grass
draw_grass:
    sub sp, sp, #32             
    stp x29, x30, [sp, #0]      // Guardar FP, LR de draw_snoopy
    str x20, [sp, #16]          // Guardar x20 de main (el fb base original)

    mov     x1, #0            // x1 = x inicial
    mov     x2, #419          // x2 = y inicial
    mov     x3, #SCREEN_WIDTH // x3 = ancho = SCREEN_WIDTH = 640
    mov     x4, #61           // x4 = alto = 61
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    // Dibujar pastitos 
    //PRIMERO
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #180    // x
    mov x2, #415    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #178    // x
    mov x2, #410    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #175    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #171    // x
    mov x2, #400    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #166    // x
    mov x2, #395    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #184    // x
    mov x2, #410    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #187    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #191    // x
    mov x2, #400    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #196    // x
    mov x2, #395    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle
    // TERMINO PRIMERO
    // SEGUNDO
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #100    // x
    mov x2, #415    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #98    // x
    mov x2, #410    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #95    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #91    // x
    mov x2, #400    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #86    // x
    mov x2, #395    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle
    // TERMINO SEGUNDO
    // TERCERO
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #20    // x
    mov x2, #440    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde oscuro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #22    // x
    mov x2, #435    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde oscuro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #25    // x
    mov x2, #430    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde oscuro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #29    // x
    mov x2, #425    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde oscuro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #34    // x
    mov x2, #420    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde oscuro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #16    // x
    mov x2, #435    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde oscuro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #12    // x
    mov x2, #430    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde oscuro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle
    // TERMINO TERCERO
    // CUARTO
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #480    // x
    mov x2, #415    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #482    // x
    mov x2, #410    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #485    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #489    // x
    mov x2, #400    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #494    // x
    mov x2, #395    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #478    // x
    mov x2, #410    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #475    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #471    // x
    mov x2, #400    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #466    // x
    mov x2, #395    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle
    // TERMINO CUARTO 
    // QUINTO
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #550    // x
    mov x2, #415    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #552    // x
    mov x2, #410    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #555    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #559   // x
    mov x2, #400    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #564    // x
    mov x2, #395    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle
    // TERMINO QUINTO
    //SEXTO
        ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #380    // x
    mov x2, #450    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde oscuro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #378    // x
    mov x2, #445    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde oscuro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #375    // x
    mov x2, #440    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde oscuro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #371    // x
    mov x2, #435    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
   movz x5, 0xFF90, lsl 16   // verde oscuro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #366    // x
    mov x2, #430    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde oscuro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #384    // x
    mov x2, #445    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde oscuro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #387    // x
    mov x2, #440    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde oscuro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle
    // TERMINO SEXTO

    ldr x20, [sp, #16]          // Restaurar x20 de main
    ldp x29, x30, [sp, #0]      // Restaurar FP, LR de draw_snoopy
    add sp, sp, #32             // Destruir stack frame

    ret
