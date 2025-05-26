	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

.global coord_to_addr
coord_to_addr:
    // x1 es y
    // x2 es y
    mov x13, #640       // X13 = ancho de pantalla
    mul x14, x2, x13    // X14 = y * ancho de pantalla
    add x14, x14, x1    // X14 = (y * ancho de pantalla) + x
    lsl x14, x14, #2    // X14 = ((y * ancho de pantalla) + x) * 4
    add x12, x0, x14    // X12 = frame buffer
    ret

.global draw_rectangle
draw_rectangle:
    // x0: framebuffer
    // x1: x
    // x2: y
    // x3: ancho
    // x4: alto
    // x5: color

    mov x20, x0     // framebuffer
    mov x21, x1     // x inicio
    mov x22, x2     // y inicio
    mov x23, x3     // ancho
    mov x24, x4     // alto
    mov x25, x5     // color

    mov x26, #0     // dy = 0
.rect_y_loop:
    cmp x26, x24
    b.ge .end

    mov x27, #0     // dx = 0
.rect_x_loop:
    cmp x27, x23
    b.ge .next_row

    // x_actual = x_inicio + dx
    // y_actual = y_inicio + dy
    add x1, x21, x27     // x1 ← x actual
    add x2, x22, x26     // x2 ← y actual
    mov x0, x20          // framebuffer
    bl coord_to_addr     // calcula dirección del píxel en x11

    str w25, [x12]       // pintar con color

    add x27, x27, #1
    b .rect_x_loop

.next_row:
    add x26, x26, #1
    b .rect_y_loop

.end:
    ret


.global draw_snoopy
.extern draw_rectangle

draw_snoopy:
    // x0: framebuffer base (viene del caller, ej. app.s)

    // RECTÁNGULO BLANCO EN EL CENTRO
    mov x1, #320        // x
    mov x2, #240        // y
    mov x3, #40         // ancho
    mov x4, #20         // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0xFFFF, lsl 0    // blanco real: 0xFFFFFFFF
    bl draw_rectangle

    ret

