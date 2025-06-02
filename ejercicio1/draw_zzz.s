
.equ SCREEN_WIDTH, 		640
.equ SCREEN_HEIGH, 		480
.equ BITS_PER_PIXEL,  	32

.extern draw_rectangle
.global draw_zzz
draw_zzz:
    
// creo stack frame y guardo registros
    sub sp, sp, #32             
    stp x29, x30, [sp, #0]      // Guardar FP, LR de draw_snoopy
    str x20, [sp, #16]          // Guardar x20 de main (el fb base original)

// primer zeta
//1. z    
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #200 // x
    mov x2, #200    // y
    mov x3, #3   // ancho
    mov x4, #3  // alto
    movz x5, 0x0000, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle

// 
//2.     
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #203 // x
    mov x2, #197    // y
    mov x3, #3   // ancho
    mov x4, #3  // alto
    movz x5, 0x0000, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle
// 
//3.     
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #206 // x
    mov x2, #194    // y
    mov x3, #3   // ancho
    mov x4, #3  // alto
    movz x5, 0x0000, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle


//4.     
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #209  // x
    mov x2, #191  // y
    mov x3, #3  // ancho
    mov x4, #3  // alto
    movz x5, 0x0000, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle

//5.     
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #200  // x
    mov x2, #191  // y
    mov x3, #9  // ancho
    mov x4, #3  // alto
    movz x5, 0x0000, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle


//6.     
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #203  // x
    mov x2, #200  // y
    mov x3, #9  // ancho
    mov x4, #3  // alto
    movz x5, 0x0000, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle

//segunda zeta     
//1.
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #180 // x
    mov x2, #180    // y
    mov x3, #3   // ancho
    mov x4, #3  // alto
    movz x5, 0x0000, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle

// 
//2.     
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #183 // x
    mov x2, #177    // y
    mov x3, #3   // ancho
    mov x4, #3  // alto
    movz x5, 0x0000, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle
// 
//3.     
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #186 // x
    mov x2, #174    // y
    mov x3, #3   // ancho
    mov x4, #3  // alto
    movz x5, 0x0000, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle


//4.     
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #189  // x
    mov x2, #171  // y
    mov x3, #3  // ancho
    mov x4, #3  // alto
    movz x5, 0x0000, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle

//5.     
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #180  // x
    mov x2, #171  // y
    mov x3, #9  // ancho
    mov x4, #3  // alto
    movz x5, 0x0000, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle


//6.    
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #183  // x
    mov x2, #180  // y
    mov x3, #9  // ancho
    mov x4, #3  // alto
    movz x5, 0x0000, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle

//tercer zeta     
//1.
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #160 // x
    mov x2, #160    // y
    mov x3, #3   // ancho
    mov x4, #3  // alto
    movz x5, 0x0000, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle

// 
//2.     
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #163 // x
    mov x2, #157    // y
    mov x3, #3   // ancho
    mov x4, #3  // alto
    movz x5, 0x0000, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle
// 
//3.     
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #166 // x
    mov x2, #154    // y
    mov x3, #3   // ancho
    mov x4, #3  // alto
    movz x5, 0x0000, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle

//3.     
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #169 // x
    mov x2, #151    // y
    mov x3, #3   // ancho
    mov x4, #3  // alto
    movz x5, 0x0000, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle


//3.     
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #172 // x
    mov x2, #148    // y
    mov x3, #3   // ancho
    mov x4, #3  // alto
    movz x5, 0x0000, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle

//4.     
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #169  // x
    mov x2, #145  // y
    mov x3, #3  // ancho
    mov x4, #3  // alto
    movz x5, 0x0000, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle

//5.     
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #160  // x
    mov x2, #145  // y
    mov x3, #15  // ancho
    mov x4, #3  // alto
    movz x5, 0x0000, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle


//6.    
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #163  // x
    mov x2, #160  // y
    mov x3, #15  // ancho
    mov x4, #3  // alto
    movz x5, 0x0000, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle



//FIN
    ldr x20, [sp, #16]          // Restaurar x20 de main
    ldp x29, x30, [sp, #0]      // Restaurar FP, LR de draw_snoopy
    add sp, sp, #32             // Destruir stack frame
    ret
