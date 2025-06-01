.equ SCREEN_WIDTH, 		640
.equ SCREEN_HEIGH, 		480
.equ BITS_PER_PIXEL,  	32

.extern draw_circle
.extern draw_rectangle
.global draw_dream

draw_dream_1: 
// creo stack frame y guardo registros
    sub sp, sp, #32             
    stp x29, x30, [sp, #0]      // Guardar FP, LR de draw_snoopy
    str x20, [sp, #16]          // Guardar x20 de main (el fb base original)

    mov x1, #230    // xc
    mov x2, #230    // yc
    mov x3, #10     // r
    movz x4, 0xFFFF, lsl 16 // color
    movk x4, 0xFFFF, lsl 0  //
    bl draw_circle

//FIN
    ldr x20, [sp, #16]          // Restaurar x20 de main
    ldp x29, x30, [sp, #0]      // Restaurar FP, LR de draw_snoopy
    add sp, sp, #32             // Destruir stack frame
    ret
