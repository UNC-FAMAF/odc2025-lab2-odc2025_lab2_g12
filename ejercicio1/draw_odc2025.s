.equ SCREEN_WIDTH,   640
.equ SCREEN_HEIGHT,   480

.extern draw_rectangle
.global draw_odc2025

draw_odc2025:
        // creo stack frame y guardo registros
        sub sp, sp, #32             
        stp x29, x30, [sp, #0]      // Guardar FP, LR de draw_snoopy
        str x20, [sp, #16]          // Guardar x20 de main (el fb base original)

        // cuadro de fondo odc 2025
        //1.
        
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #338
        mov x2, #368
        mov x3, #62
        mov x4, #15
        movz x5, 0x00ff, lsl 16 // color amarillo
        movk x5, 0xff00, lsl 0
        bl draw_rectangle


        //LETRA 'O'
        // Parte superior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #342
        mov x2, #370
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte izquierda
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #340
        mov x2, #370
        mov x3, #2
        mov x4, #10
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte derecha
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #346
        mov x2, #370
        mov x3, #2
        mov x4, #10
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte inferior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #342
        mov x2, #378
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle


        //LETRA 'd'
        // Parte superior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #352
        mov x2, #374
        mov x3, #2
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte izquierda
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #350
        mov x2, #374
        mov x3, #2
        mov x4, #6
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte derecha
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #354
        mov x2, #370
        mov x3, #2
        mov x4, #10
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte inferior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #352
        mov x2, #378
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle        

        //LETRA 'C'
        // Parte superior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #360
        mov x2, #370
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte izquierda
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #358
        mov x2, #370
        mov x3, #2
        mov x4, #10
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte inferior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #360
        mov x2, #378
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        //LETRA '2'
        // Parte superior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #368
        mov x2, #370
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte izquierda
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #368
        mov x2, #374
        mov x3, #2
        mov x4, #6
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte derecha
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #372
        mov x2, #370
        mov x3, #2
        mov x4, #6
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte medio
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #370
        mov x2, #374
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte inferior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #370
        mov x2, #378
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle
        
        //LETRA '0'
        // Parte superior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #378
        mov x2, #370
        mov x3, #2
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte izquierda
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #376
        mov x2, #370
        mov x3, #2
        mov x4, #10
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte derecha
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #380
        mov x2, #370
        mov x3, #2
        mov x4, #10
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte inferior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #378
        mov x2, #378
        mov x3, #2
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        //LETRA '2'
        // Parte superior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #384
        mov x2, #370
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte izquierda
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #384
        mov x2, #374
        mov x3, #2
        mov x4, #6
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte derecha
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #388
        mov x2, #370
        mov x3, #2
        mov x4, #6
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte medio
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #386
        mov x2, #374
        mov x3, #2
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte inferior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #386
        mov x2, #378
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        //LETRA '5'
        // Parte superior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #394
        mov x2, #370
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte izquierda
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #392
        mov x2, #370
        mov x3, #2
        mov x4, #6
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte derecha
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #396
        mov x2, #374
        mov x3, #2
        mov x4, #6
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte medio
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #394
        mov x2, #374
        mov x3, #2
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte inferior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #392
        mov x2, #378
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle


        //FIN
        ldr x20, [sp, #16]          // Restaurar x20 de main
        ldp x29, x30, [sp, #0]      // Restaurar FP, LR de draw_snoopy
        add sp, sp, #32             // Destruir stack frame
        ret


    

