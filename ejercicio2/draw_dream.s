.equ SCREEN_WIDTH, 		640
.equ SCREEN_HEIGH, 		480
.equ BITS_PER_PIXEL,  	32

.extern draw_circle
.extern draw_rectangle

.global draw_dream_1
draw_dream_1:

// creo stack frame y guardo registros
    sub sp, sp, #32             
    stp x29, x30, [sp, #0]      // Guardar FP, LR de draw_snoopy
    str x20, [sp, #16]          // Guardar x20 de main (el fb base original)

    mov x1, #160    // x
    mov x2, #150    // y
    mov x3, #10     // r
    movz x4, 0xFFFF, lsl 16
    movk x4, 0xFFFF, lsl 0  // color
    bl draw_circle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #160    // x
    mov x2, #170    // y
    mov x3, #10     // r
    movz x4, 0xFFFF, lsl 16
    movk x4, 0xFFFF, lsl 0  // color
    bl draw_circle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #150    // x
    mov x2, #160    // y
    mov x3, #10     // r
    movz x4, 0xFFFF, lsl 16
    movk x4, 0xFFFF, lsl 0  // color
    bl draw_circle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #170    // x
    mov x2, #160    // y
    mov x3, #10     // r
    movz x4, 0xFFFF, lsl 16
    movk x4, 0xFFFF, lsl 0  // color
    bl draw_circle

//FIN
    ldr x20, [sp, #16]          // Restaurar x20 de main
    ldp x29, x30, [sp, #0]      // Restaurar FP, LR de draw_snoopy
    add sp, sp, #32             // Destruir stack frame
    ret

.global draw_dream_2
draw_dream_2:

// creo stack frame y guardo registros
    sub sp, sp, #32             
    stp x29, x30, [sp, #0]      // Guardar FP, LR de draw_snoopy
    str x20, [sp, #16]          // Guardar x20 de main (el fb base original)

    // circulos arriba y=150
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #130    // x
    mov x2, #150    // y
    mov x3, #13     // r
    movz x4, 0xFFFF, lsl 16
    movk x4, 0xFFFF, lsl 0  // color
    bl draw_circle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #150    // x
    mov x2, #145    // y
    mov x3, #13     // r
    movz x4, 0xFFFF, lsl 16
    movk x4, 0xFFFF, lsl 0  // color
    bl draw_circle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #170    // x
    mov x2, #150    // y
    mov x3, #13     // r
    movz x4, 0xFFFF, lsl 16
    movk x4, 0xFFFF, lsl 0  // color
    bl draw_circle

    // circulos abajo y=170

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #130    // x
    mov x2, #180    // y
    mov x3, #13     // r
    movz x4, 0xFFFF, lsl 16
    movk x4, 0xFFFF, lsl 0  // color
    bl draw_circle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #150    // x
    mov x2, #185    // y
    mov x3, #13     // r
    movz x4, 0xFFFF, lsl 16
    movk x4, 0xFFFF, lsl 0  // color
    bl draw_circle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #170    // x
    mov x2, #180    // y
    mov x3, #13     // r
    movz x4, 0xFFFF, lsl 16
    movk x4, 0xFFFF, lsl 0  // color
    bl draw_circle

    // medio izq

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #120    // x
    mov x2, #165    // y
    mov x3, #10     // r
    movz x4, 0xFFFF, lsl 16
    movk x4, 0xFFFF, lsl 0  // color
    bl draw_circle

    // medio der

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #180    // x
    mov x2, #165    // y
    mov x3, #10     // r
    movz x4, 0xFFFF, lsl 16
    movk x4, 0xFFFF, lsl 0  // color
    bl draw_circle

    // relleno
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #130    // x
    mov x2, #150    // y
    mov x3, #43     // ancho
    mov x4, #30       // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0xFFFF, lsl 0 
    bl draw_rectangle

//FIN
    ldr x20, [sp, #16]          // Restaurar x20 de main
    ldp x29, x30, [sp, #0]      // Restaurar FP, LR de draw_snoopy
    add sp, sp, #32             // Destruir stack frame
    ret

