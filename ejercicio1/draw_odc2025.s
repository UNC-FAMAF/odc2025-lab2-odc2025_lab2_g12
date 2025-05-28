    .equ SCREEN_WIDTH,   640
	.equ SCREEN_HEIGHT,   480

	.extern draw_rectangle
    .global draw_odc2025


    draw_odc2025:

        //LETRA 'O'
        // Parte superior
        mov x1, #342
        mov x2, #370
        mov x3, #4
        mov x4, #2
        mov w5, #0x000000
        bl draw_rectangle

        // Parte izquierda
        mov x1, #340
        mov x2, #370
        mov x3, #2
        mov x4, #10
        mov w5, #0x000000
        bl draw_rectangle

        // Parte derecha
        mov x1, #346
        mov x2, #370
        mov x3, #2
        mov x4, #10
        mov w5, #0x000000
        bl draw_rectangle

        // Parte inferior
        mov x1, #342
        mov x2, #378
        mov x3, #4
        mov x4, #2
        mov w5, #0x000000
        bl draw_rectangle


        //LETRA 'd'
        // Parte superior
        mov x1, #352
        mov x2, #374
        mov x3, #2
        mov x4, #2
        mov w5, #0x000000
        bl draw_rectangle

        // Parte izquierda
        mov x1, #350
        mov x2, #374
        mov x3, #2
        mov x4, #6
        mov w5, #0x000000
        bl draw_rectangle

        // Parte derecha
        mov x1, #354
        mov x2, #370
        mov x3, #2
        mov x4, #10
        mov w5, #0x000000
        bl draw_rectangle

        // Parte inferior
        mov x1, #352
        mov x2, #378
        mov x3, #4
        mov x4, #2
        mov w5, #0x000000
        bl draw_rectangle        

        //LETRA 'C'
        // Parte superior
        mov x1, #360
        mov x2, #370
        mov x3, #4
        mov x4, #2
        mov w5, #0x000000
        bl draw_rectangle

        // Parte izquierda
        mov x1, #358
        mov x2, #370
        mov x3, #2
        mov x4, #10
        mov w5, #0x000000
        bl draw_rectangle

        // Parte inferior
        mov x1, #360
        mov x2, #378
        mov x3, #4
        mov x4, #2
        mov w5, #0x000000
        bl draw_rectangle

        //LETRA '2'
        // Parte superior
        mov x1, #368
        mov x2, #370
        mov x3, #4
        mov x4, #2
        mov w5, #0x000000
        bl draw_rectangle

        // Parte izquierda
        mov x1, #368
        mov x2, #374
        mov x3, #2
        mov x4, #6
        mov w5, #0x000000
        bl draw_rectangle

        // Parte derecha
        mov x1, #372
        mov x2, #370
        mov x3, #2
        mov x4, #6
        mov w5, #0x000000
        bl draw_rectangle

        // Parte medio
        mov x1, #370
        mov x2, #374
        mov x3, #4
        mov x4, #2
        mov w5, #0x000000
        bl draw_rectangle

        // Parte inferior
        mov x1, #370
        mov x2, #378
        mov x3, #4
        mov x4, #2
        mov w5, #0x000000
        bl draw_rectangle
        
        //LETRA '0'
        // Parte superior
        mov x1, #378
        mov x2, #370
        mov x3, #2
        mov x4, #2
        mov w5, #0x000000
        bl draw_rectangle

        // Parte izquierda
        mov x1, #376
        mov x2, #370
        mov x3, #2
        mov x4, #10
        mov w5, #0x000000
        bl draw_rectangle

        // Parte derecha
        mov x1, #380
        mov x2, #370
        mov x3, #2
        mov x4, #10
        mov w5, #0x000000
        bl draw_rectangle

        // Parte inferior
        mov x1, #378
        mov x2, #378
        mov x3, #2
        mov x4, #2
        mov w5, #0x000000
        bl draw_rectangle

        //LETRA '2'
        // Parte superior
        mov x1, #384
        mov x2, #370
        mov x3, #4
        mov x4, #2
        mov w5, #0x000000
        bl draw_rectangle

        // Parte izquierda
        mov x1, #384
        mov x2, #374
        mov x3, #2
        mov x4, #6
        mov w5, #0x000000
        bl draw_rectangle

        // Parte derecha
        mov x1, #388
        mov x2, #370
        mov x3, #2
        mov x4, #6
        mov w5, #0x000000
        bl draw_rectangle

        // Parte medio
        mov x1, #386
        mov x2, #374
        mov x3, #2
        mov x4, #2
        mov w5, #0x000000
        bl draw_rectangle

        // Parte inferior
        mov x1, #386
        mov x2, #378
        mov x3, #4
        mov x4, #2
        mov w5, #0x000000
        bl draw_rectangle

        //LETRA '5'
        // Parte superior
        mov x1, #394
        mov x2, #370
        mov x3, #4
        mov x4, #2
        mov w5, #0x000000
        bl draw_rectangle

        // Parte izquierda
        mov x1, #392
        mov x2, #370
        mov x3, #2
        mov x4, #6
        mov w5, #0x000000
        bl draw_rectangle

        // Parte derecha
        mov x1, #396
        mov x2, #374
        mov x3, #2
        mov x4, #6
        mov w5, #0x000000
        bl draw_rectangle

        // Parte medio
        mov x1, #394
        mov x2, #374
        mov x3, #2
        mov x4, #2
        mov w5, #0x000000
        bl draw_rectangle

        // Parte inferior
        mov x1, #392
        mov x2, #378
        mov x3, #4
        mov x4, #2
        mov w5, #0x000000
        bl draw_rectangle

        ret


    

