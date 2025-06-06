	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32 
 
.global sun 
sun:
 // creo stack frame y guardo registros
    sub sp, sp, #32             
    stp x29, x30, [sp, #0]      // Guardar FP, LR de draw_snoopy
    str x20, [sp, #16]          // Guardar x20 de main (el fb base original)
    
    mov x1, #610      // centro x
    mov x2, #15      // centro y
    mov x3, #100       // radio
    movz x4, 0xFFFF, lsl 16
    movk x4, 0xFF00, lsl 0 // amarillo: 0xFFFFFF00
    bl draw_circle

    ldr x20, [sp, #16]          // Restaurar x20 de main
    ldp x29, x30, [sp, #0]      // Restaurar FP, LR de draw_snoopy
    add sp, sp, #32             // Destruir stack frame
    ret
