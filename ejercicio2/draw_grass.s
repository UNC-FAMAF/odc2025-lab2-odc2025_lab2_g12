	.equ SCREEN_WIDTH,   640
	.equ SCREEN_HEIGHT,   480
    .equ BITS_PER_PIXEL , 32
	.extern draw_rectangle

.global draw_grass_1
draw_grass_1:
    // Cubre desde la coordenada (0, 419) hasta (639, 479), es decir, 61 píxeles de alto
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
    mov x1, #175    // x
    mov x2, #410    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #170    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #165   // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #160    // x
    mov x2, #410   // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle
    
    //comienza la rama der
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #180   // x
    mov x2, #410   // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #180    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #180    // x
    mov x2, #400    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #180    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #175    // x
    mov x2, #395    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle
    // TERMINO PRIMERO
    //SEGUNDO
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #20    // x
    mov x2, #440    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #15   // x
    mov x2, #435    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #10    // x
    mov x2, #430    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #5   // x
    mov x2, #430    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #0    // x
    mov x2, #435   // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle
    
    //comienza la rama der
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #20   // x
    mov x2, #435   // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #20    // x
    mov x2, #430    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #20    // x
    mov x2, #425    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #20    // x
    mov x2, #430    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #15    // x
    mov x2, #420    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle
    // TERMINO SEGUNDO
    //TERCERO
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #480    // x
    mov x2, #415    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #475   // x
    mov x2, #410    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #470   // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #465   // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #460    // x
    mov x2, #410   // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle
    
    //comienza la rama der
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #480   // x
    mov x2, #410   // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #480    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #480    // x
    mov x2, #400    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #480    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #475    // x
    mov x2, #395    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle
    // TERMINO TERCERO
    //CUARTO
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #550    // x
    mov x2, #415    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #545   // x
    mov x2, #410    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #540    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #535   // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #530    // x
    mov x2, #410   // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle
    
    //comienza la rama der
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #550   // x
    mov x2, #410   // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #550    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #550   // x
    mov x2, #400    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #550    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #545    // x
    mov x2, #395    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle
    // TERMINO CUARTO

    ldr x20, [sp, #16]          // Restaurar x20 de main
    ldp x29, x30, [sp, #0]      // Restaurar FP, LR de draw_snoopy
    add sp, sp, #32             // Destruir stack frame

    ret

.global draw_grass_2
draw_grass_2:
    // Cubre desde la coordenada (0, 419) hasta (639, 479), es decir, 61 píxeles de alto
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
    mov x1, #182    // x
    mov x2, #410    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #184    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #186   // x
    mov x2, #400    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #190    // x
    mov x2, #395   // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle
    
    //comienza la rama der
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #178   // x
    mov x2, #410   // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #176    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #174    // x
    mov x2, #400    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #170    // x
    mov x2, #395    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    // TERMINO PRIMERO
    //SEGUNDO
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #20    // x
    mov x2, #440    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #22   // x
    mov x2, #435    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #24    // x
    mov x2, #430    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #26   // x
    mov x2, #425    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #30   // x
    mov x2, #420  // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle
    
    //comienza la rama der
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #18   // x
    mov x2, #435   // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #16    // x
    mov x2, #430    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #14    // x
    mov x2, #425    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #10    // x
    mov x2, #420    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    // TERMINO SEGUNDO
    //TERCERO
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #480    // x
    mov x2, #415    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #482   // x
    mov x2, #410    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #484   // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #486   // x
    mov x2, #400    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #490   // x
    mov x2, #395   // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle
    
    //comienza la rama der
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #478   // x
    mov x2, #410   // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #476    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #474    // x
    mov x2, #400    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #470    // x
    mov x2, #395    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    // TERMINO TERCERO
    //CUARTO
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #550    // x
    mov x2, #415    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #552   // x
    mov x2, #410    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #554    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #556   // x
    mov x2, #400    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #560    // x
    mov x2, #395   // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle
    
    //comienza la rama der
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #548   // x
    mov x2, #410   // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #546    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #544   // x
    mov x2, #400    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #540    // x
    mov x2, #395    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle
    // TERMINO CUARTO
    
    ldr x20, [sp, #16]          // Restaurar x20 de main
    ldp x29, x30, [sp, #0]      // Restaurar FP, LR de draw_snoopy
    add sp, sp, #32             // Destruir stack frame

    ret

.global draw_grass_3
draw_grass_3:
    // Cubre desde la coordenada (0, 419) hasta (639, 479), es decir, 61 píxeles de alto
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
    mov x1, #185    // x
    mov x2, #410    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #190    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #195   // x
    mov x2, #403    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #200    // x
    mov x2, #405   // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle
    
    //comienza la rama der
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #180   // x
    mov x2, #410   // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #180    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #183    // x
    mov x2, #402    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #186    // x
    mov x2, #398    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    // TERMINO PRIMERO
    //SEGUNDO
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #20    // x
    mov x2, #440    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #25   // x
    mov x2, #435    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #30    // x
    mov x2, #430    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #35   // x
    mov x2, #428    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #40   // x
    mov x2, #430  // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle
    
    //comienza la rama der
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #20   // x
    mov x2, #435   // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #20    // x
    mov x2, #430    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #23    // x
    mov x2, #427    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #26    // x
    mov x2, #423    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF90, lsl 16   // verde claro
    movk x5, 0xEE90, lsl 0
    bl draw_rectangle

    // TERMINO SEGUNDO
    //TERCERO (POSIBLE ERROR) -----------------------------------------------
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #480    // x
    mov x2, #415    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #485   // x
    mov x2, #410    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #490   // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #495   // x
    mov x2, #403    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #500   // x
    mov x2, #405   // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle
    
    //comienza la rama der
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #480   // x
    mov x2, #410   // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #480    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #483    // x
    mov x2, #402    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #486    // x
    mov x2, #398    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 
    // TERMINO TERCERO

    //CUARTO
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #550    // x
    mov x2, #415    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #555   // x
    mov x2, #410    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #560    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle 

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #565   // x
    mov x2, #403    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #570    // x
    mov x2, #405   // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle
    
    //comienza la rama der
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #550   // x
    mov x2, #410   // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #550    // x
    mov x2, #405    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #553   // x
    mov x2, #402    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #556    // x
    mov x2, #398    // y
    mov x3, #5    // ancho
    mov x4, #5       // alto
    movz x5, 0xFF00, lsl 16   // verde oscuro
    movk x5, 0x6400, lsl 0
    bl draw_rectangle
    // TERMINO CUARTO
    
    ldr x20, [sp, #16]          // Restaurar x20 de main
    ldp x29, x30, [sp, #0]      // Restaurar FP, LR de draw_snoopy
    add sp, sp, #32             // Destruir stack frame

    ret

