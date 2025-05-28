	.equ SCREEN_WIDTH,   640
	.equ SCREEN_HEIGHT,   480

	.extern draw_rectangle
    .global draw_grass
    .global draw_single_grass_hair

	.section .text

    // Cubre desde la coordenada (0, 419) hasta (639, 479), es decir, 61 píxeles de alto
draw_grass:
    mov     x1, #0            // x1 = x inicial
    mov     x2, #419          // x2 = y inicial
    mov     x3, #SCREEN_WIDTH // x3 = ancho = SCREEN_WIDTH = 640
    mov     x4, #61           // x4 = alto = 61
    mov     w5, #0x00FF00     // x5 = color verde

    // llamada a draw_rectangle(x0, x1, x2, x3, x4, x5)
    bl      draw_rectangle


    // Línea izquierda que va subiendo hacia la derecha
    mov     x1, #450     // x inicial
    mov     x2, #419     // y inicial
    mov     x3, #1       // dirX derecha
    bl      draw_single_grass_hair

    // Línea derecha que va subiendo hacia la izquierda
    mov     x1, #450     // x inicial
    mov     x2, #419     // y inicial
    mov     x3, #-1      // dirX izquierda
    bl      draw_single_grass_hair

    // Línea izquierda que va subiendo hacia la derecha
    mov     x1, #90     // x inicial
    mov     x2, #419     // y inicial
    mov     x3, #1       // dirX derecha
    bl      draw_single_grass_hair

    // Línea derecha que va subiendo hacia la izquierda
    mov     x1, #90     // x inicial
    mov     x2, #419     // y inicial
    mov     x3, #-1      // dirX izquierda
    bl      draw_single_grass_hair

    ret


    // Dibuja una línea diagonal de 20 píxeles a 45 grados
    // x0 = framebuffer, x1 = x start, x2 = y start, x3 = dirX (1 o -1)
    
draw_single_grass_hair:
    mov     x4, #20          // longitud de la línea
    mov     w5, #0x004400    // color verde oscuro

    mov     x19, #-4         // offsetX inicial (5 píxeles a la izquierda)

.outer_loop:
    mov     x6, #0           // i = 0 (contador longitud línea)

.inner_loop:
    // x = x1 + i * dirX + offsetX
    mul     x7, x3, x6       // i * dirX
    add     x7, x1, x7       // x1 + i * dirX
    add     x7, x7, x19      // + offsetX para grosor

    // y = y1 - i
    sub     x8, x2, x6

    // Calcular dirección en framebuffer
    mov     x9, #SCREEN_WIDTH
    mul     x10, x8, x9      // y * SCREEN_WIDTH
    add     x10, x10, x7     // + x
    lsl     x10, x10, #2     // * 4 bytes por píxel (RGBA)
    add     x10, x0, x10     // framebuffer + offset

    str     w5, [x10]        // escribir color

    add     x6, x6, #1
    cmp     x6, x4
    blt     .inner_loop

    add     x19, x19, #1     // siguiente offset horizontal
    cmp     x19, #5          // 6 porque queremos offsetX <= 5 (incluye 0)
    blt     .outer_loop

    ret

    ret
