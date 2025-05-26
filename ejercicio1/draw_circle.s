// Dibuja un círculo en el framebuffer
// x0: framebuffer base
// x1: centro x
// x2: centro y
// x3: radio
// x4: color ARGB (32 bits)

.global draw_circle
draw_circle:
    mov x20, x0    // framebuffer base
    mov x21, x1    // xc
    mov x22, x2    // yc
    mov x23, x3    // r
    mov x24, x4    // color

    mov x25, #0    // y
.loop_y:
    cmp x25, #480
    b.ge .end

    mov x26, #0    // x
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

.end:
    ret
