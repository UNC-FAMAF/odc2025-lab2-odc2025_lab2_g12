.equ SCREEN_WIDTH,   640
.equ SCREEN_HEIGHT,   480

.extern draw_rectangle
.global draw_odc2025

draw_odc2025:
        // creo stack frame y guardo registros
        sub sp, sp, #32             
        stp x29, x30, [sp, #0]      // Guardar FP, LR de draw_snoopy
        str x20, [sp, #16]          // Guardar x20 de main (el fb base original)

        //LETRA 'O'
        // Parte superior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #130
        mov x2, #150
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte izquierda
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #128
        mov x2, #150
        mov x3, #2
        mov x4, #10
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte derecha
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #134
        mov x2, #150
        mov x3, #2
        mov x4, #10
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte inferior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #130
        mov x2, #158
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle


        //LETRA 'd'
        // Parte superior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #140
        mov x2, #154
        mov x3, #2
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte izquierda
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #138
        mov x2, #154
        mov x3, #2
        mov x4, #6
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte derecha
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #142
        mov x2, #150
        mov x3, #2
        mov x4, #10
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte inferior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #140
        mov x2, #158
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle        

        //LETRA 'C'
        // Parte superior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #148
        mov x2, #150
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte izquierda
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #146
        mov x2, #150
        mov x3, #2
        mov x4, #10
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte inferior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #148
        mov x2, #158
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        //LETRA '2'
        // Parte superior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #130
        mov x2, #162
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte izquierda
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #130
        mov x2, #166
        mov x3, #2
        mov x4, #6
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte derecha
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #134
        mov x2, #162
        mov x3, #2
        mov x4, #6
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte medio
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #132
        mov x2, #166
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte inferior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #132
        mov x2, #170
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle
        
        //LETRA '0'
        // Parte superior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #140
        mov x2, #162
        mov x3, #2
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte izquierda
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #138
        mov x2, #162
        mov x3, #2
        mov x4, #10
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte derecha
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #142
        mov x2, #162
        mov x3, #2
        mov x4, #10
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte inferior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #140
        mov x2, #170
        mov x3, #2
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        //LETRA '2'
        // Parte superior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #146
        mov x2, #162
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte izquierda
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #146
        mov x2, #166
        mov x3, #2
        mov x4, #6
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte derecha
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #150
        mov x2, #162
        mov x3, #2
        mov x4, #6
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte medio
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #148
        mov x2, #166
        mov x3, #2
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte inferior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #148
        mov x2, #170
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        //LETRA '5'
        // Parte superior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #155
        mov x2, #162
        mov x3, #4
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte izquierda
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #154
        mov x2, #162
        mov x3, #2
        mov x4, #6
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte derecha
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #157
        mov x2, #166
        mov x3, #2
        mov x4, #6
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte medio
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #156
        mov x2, #166
        mov x3, #2
        mov x4, #2
        movz x5, 0x0000, lsl 16 //negro
        movk x5, 0x0000, lsl 0
        bl draw_rectangle

        // Parte inferior
        ldr x0, [sp, #16]   // restaurar framebuffer base  
        mov x1, #154
        mov x2, #170
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


    

