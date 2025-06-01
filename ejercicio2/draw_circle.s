// Dibuja un círculo en el framebuffer
// x0: framebuffer base
// x1: centro x
// x2: centro y
// x3: radio
// x4: color ARGB (32 bits)

.global draw_circle
draw_circle:
    // guardar registros y crear stack frame
    sub sp, sp, #64             // restar tamaño total del frame (64 bytes) de SP
    stp x29, x30, [sp, #0]      // 2. Guardar FP, LR en la base del nuevo frame
    stp x20, x21, [sp, #16]     
    stp x22, x23, [sp, #32]     
    stp x24, x25, [sp, #48]     

    mov x20, x0    // x20 local de draw_circle = framebuffer base (del argumento x0)
    mov x21, x1    // xc
    mov x22, x2    // yc
    mov x23, x3    // r
    mov x24, x4    // color

    mov x25, #0    // counter loop y
.loop_y:
    cmp x25, #480
    b.ge .end_dcircle

    mov x26, #0    // counter loop x
.loop_x:
    cmp x26, #640
    b.ge .next_y

    sub x10, x26, x21
    sub x11, x25, x22
    mul x12, x10, x10
    mul x13, x11, x11
    add x14, x12, x13
    mul x15, x23, x23

    cmp x14, x15
    b.ge .skip_pixel

    // calcular offset: dirección del pixel
    mov x17, #640
    mul x16, x25, x17
    add x16, x16, x26
    lsl x16, x16, #2
    add x16, x20, x16
    str w24, [x16]

.skip_pixel:
    add x26, x26, #1
    b .loop_x

.next_y:
    add x25, x25, #1
    b .loop_y

.end_dcircle:
    // restaurar registros y destruir stack frame
    ldp x24, x25, [sp, #48]     // 3. Restaurar x24, x25
    ldp x22, x23, [sp, #32]     // Restaurar x22, x23
    ldp x20, x21, [sp, #16]     // Restaurar x20, x21
    ldp x29, x30, [sp, #0]      // Restaurar FP, LR
    add sp, sp, #64             // 4. Sumar tamaño total del frame
    ret
