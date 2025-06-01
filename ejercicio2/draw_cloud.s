.equ SCREEN_WIDTH, 		640
.equ SCREEN_HEIGH, 		480
.equ BITS_PER_PIXEL,  	32

.extern draw_circle
.extern draw_rectangle
.global draw_cloud

draw_cloud: 
    // x0: framebuffer base
    // x1: x
    // x2: y
    // x3: color

    // crear stack frame (64 bytes para x20-x25, x29, x30)
    sub sp, sp, #48
    stp x29, x30, [sp, #0]      // Guardar FP, LR
    stp x20, x21, [sp, #16]     // Guardar x20 (del llamador), x21 (para x_start)
    stp x22, x23, [sp, #32]     // Guardar x22 (para y_start), x23 (para color)

    mov x20, x0     // x20 local = framebuffer base
    mov x21, x1     // x inicio
    mov x22, x2     // y inicio
    mov x23, x3     // color

    mov x0, x20     // x20 local = framebuffer base
    mov x4, x23

    add x1, x21, #0
    add x2, x22, #0
    mov x3, #15
    bl draw_circle

    add x1, x21, #25   // xc
    add x2, x22, #0   // xy
    mov x3, #20    // r
    mov x4, x23
    bl draw_circle

    add x1, x21, #50
    add x2, x22, #0
    mov x3, #17
    bl draw_circle

//FIN
    ldp x22, x23, [sp, #32]     // Restaurar x22, x23
    ldp x20, x21, [sp, #16]     // Restaurar x20, x21
    ldp x29, x30, [sp, #0]      // Restaurar FP, LR
    add sp, sp, #48             // 4. Sumar tamaño total del frame
    ret
