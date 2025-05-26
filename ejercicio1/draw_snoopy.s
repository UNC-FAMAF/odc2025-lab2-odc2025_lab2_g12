.global draw_pixel
draw_pixel:
    // parameters: 
	//	x1: x, x2: y, x3:color
    mov x10, #640           // ancho pantalla
    mul x11, x2, x10        // x11 = y * ancho
    add x11, x11, x1        // x11 = y * ancho + x
    lsl x11, x11, #2        // *4 
    add x11, x0, x11        // x11 dir del pixel en memoria
    str w3, [x11]           // guarda color en x11
    ret
