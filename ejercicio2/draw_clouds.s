.equ SCREEN_WIDTH, 		640
.equ SCREEN_HEIGH, 		480
.equ BITS_PER_PIXEL,  	32

.extern draw_rectangle
.global draw_clouds
draw_clouds:
    
// creo stack frame y guardo registros
    sub sp, sp, #32             
    stp x29, x30, [sp, #0]      // Guardar FP, LR de draw_snoopy
    str x20, [sp, #16]          // Guardar x20 de main (el fb base original)


// nubes
//1. NUBE DERECHA    
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #400 // x
    mov x2, #100    // y
    mov x3, #80   // ancho
    mov x4, #50    // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0xFFFF, lsl 0 
    bl draw_rectangle

//2. NUBE DERECHA
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #400 // x
    mov x2, #100    // y
    mov x3, #100   // ancho
    mov x4, #25    // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0xFFFF, lsl 0 
    bl draw_rectangle

//3. NUBE DERECHA
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #380 // x
    mov x2, #110    // y
    mov x3, #100   // ancho
    mov x4, #25    // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0xFFFF, lsl 0 
    bl draw_rectangle

//4. NUBE MEDIO
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #420 // x
    mov x2, #85    // y
    mov x3, #50   // ancho
    mov x4, #15    // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0xFFFF, lsl 0 
    bl draw_rectangle


//5.NUBE MEDIO
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #160 // x
    mov x2, #50    // y
    mov x3, #110   // ancho
    mov x4, #25    // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0xFFFF, lsl 0 
    bl draw_rectangle

//6. NUBE MEDIO
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #190 // x
    mov x2, #65    // y
    mov x3, #45   // ancho
    mov x4, #25    // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0xFFFF, lsl 0 
    bl draw_rectangle

//7. NUBE MEDIO
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #195 // x
    mov x2, #35    // y
    mov x3, #45   // ancho
    mov x4, #20    // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0xFFFF, lsl 0 
    bl draw_rectangle

//8.NUBE IZQUIERDA
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #40 // x
    mov x2, #100    // y
    mov x3, #70   // ancho
    mov x4, #25    // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0xFFFF, lsl 0 
    bl draw_rectangle

//9. NUBE IZQUIERDA
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #50 // x
    mov x2, #115    // y
    mov x3, #35   // ancho
    mov x4, #25    // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0xFFFF, lsl 0 
    bl draw_rectangle

//10. NUBE IZQUIERDA
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #55 // x
    mov x2, #85    // y
    mov x3, #35   // ancho
    mov x4, #20    // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0xFFFF, lsl 0 
    bl draw_rectangle

//BORDE DE NUBE (BORDE 1-14 = NUBE DERECHA -- BORDE 15-26 = NUBE MEDIO -- BORDE 27-39 = NUBE IZQUIERDA)
//1. comienzan los bordes de la nube derecha
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #420 // x
    mov x2, #85    // y
    mov x3, #50   // ancho
    mov x4, #5    // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//2. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #400 // x
    mov x2, #150    // y
    mov x3, #80   // ancho
    mov x4, #5    // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//3. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #380 // x
    mov x2, #110    // y
    mov x3, #5   // ancho
    mov x4, #25    // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//4. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #380 // x
    mov x2, #110    // y
    mov x3, #20   // ancho
    mov x4, #5    // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//5. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #380 // x
    mov x2, #130    // y
    mov x3, #20   // ancho
    mov x4, #5    // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//6. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #400 // x
    mov x2, #100    // y
    mov x3, #5   // ancho
    mov x4, #15    // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//7. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #400 // x
    mov x2, #130    // y
    mov x3, #5   // ancho
    mov x4, #25    // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//8. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #480 // x
    mov x2, #125    // y
    mov x3, #5   // ancho
    mov x4, #30    // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//9. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #500 // x
    mov x2, #100    // y
    mov x3, #5   // ancho
    mov x4, #25   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//10. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #470 // x
    mov x2, #100    // y
    mov x3, #35   // ancho
    mov x4, #5   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle


//11. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #480 // x
    mov x2, #120    // y
    mov x3, #25   // ancho
    mov x4, #5   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//12. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #400 // x
    mov x2, #100    // y
    mov x3, #20   // ancho
    mov x4, #5   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//13. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #415 // x
    mov x2, #85    // y
    mov x3, #5   // ancho
    mov x4, #15   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//14. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, 465 // x
    mov x2, #85    // y
    mov x3, #5   // ancho
    mov x4, #20   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//15. comienzan los bordes de la nube del medio
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #160 // x
    mov x2, #50   // y
    mov x3, #5  // ancho
    mov x4, #25   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//16. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #270 // x
    mov x2, #50   // y
    mov x3, #5  // ancho
    mov x4, #25   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//17. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #240 // x
    mov x2, #35   // y
    mov x3, #5  // ancho
    mov x4, #15   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle


//18. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #230 // x
    mov x2, #75   // y
    mov x3, #5  // ancho
    mov x4, #15   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//19. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #190 // x
    mov x2, #75   // y
    mov x3, #5  // ancho
    mov x4, #15   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//20. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #190 // x
    mov x2, #35   // y
    mov x3, #5  // ancho
    mov x4, #15   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//21. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #190 // x
    mov x2, #35   // y
    mov x3, #50  // ancho
    mov x4, #5   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle


//22. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #190 // x
    mov x2, #85   // y
    mov x3, #40  // ancho
    mov x4, #5   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//23. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #230 // x
    mov x2, #75   // y
    mov x3, #45  // ancho
    mov x4, #5   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle


//24. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #240 // x
    mov x2, #50   // y
    mov x3, #35  // ancho
    mov x4, #5   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//25. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #165 // x
    mov x2, #50   // y
    mov x3, #30  // ancho
    mov x4, #5   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//26. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #165 // x
    mov x2, #70   // y
    mov x3, #30  // ancho
    mov x4, #5   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//27. comienzan los bordes de la nube izquierda 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #40 // x
    mov x2, #100   // y
    mov x3, #15 // ancho
    mov x4, #5   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//28. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #40 // x
    mov x2, #120   // y
    mov x3, #10 // ancho
    mov x4, #5   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle


//29. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #50 // x
    mov x2, #140   // y
    mov x3, #35 // ancho
    mov x4, #5   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//30. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #55 // x
    mov x2, #80   // y
    mov x3, #35 // ancho
    mov x4, #5   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle


//31. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #90 // x
    mov x2, #100   // y
    mov x3, #20 // ancho
    mov x4, #5   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle


//32. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #85 // x
    mov x2, #120   // y
    mov x3, #25 // ancho
    mov x4, #5   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle


//33. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #85 // x
    mov x2, #120   // y
    mov x3, #5 // ancho
    mov x4, #25   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle


//34. 
 ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #50 // x
    mov x2, #120   // y
    mov x3, #5 // ancho
    mov x4, #25   // alto
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF
    movk x5, 0xBBDD, lsl 0 
    bl draw_rectangle

//35.  
    ldr x0, [sp, #16]   // restaurar framebuffer base      
    mov x1, #40 // x    
    mov x2, #100   // y    
    mov x3, #5 // ancho    
    mov x4, #20   // alto    
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF    
    movk x5, 0xBBDD, lsl 0     
    bl draw_rectangle

//36.  
    ldr x0, [sp, #16]   // restaurar framebuffer base      
    mov x1, #105 // x    
    mov x2, #100   // y    
    mov x3, #5 // ancho    
    mov x4, #20   // alto    
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF    
    movk x5, 0xBBDD, lsl 0     
    bl draw_rectangle

//38.  
    ldr x0, [sp, #16]   // restaurar framebuffer base      
    mov x1, #85 // x    
    mov x2, #80   // y    
    mov x3, #5 // ancho    
    mov x4, #25   // alto    
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF    
    movk x5, 0xBBDD, lsl 0     
    bl draw_rectangle

//39.  
    ldr x0, [sp, #16]   // restaurar framebuffer base      
    mov x1, #55 // x    
    mov x2, #80   // y    
    mov x3, #5 // ancho    
    mov x4, #25   // alto    
    movz x5, 0x008E, lsl 16 //COLOR GRIS/CELESTE: #8EBBFF    
    movk x5, 0xBBDD, lsl 0     
    bl draw_rectangle


//FIN
    ldr x20, [sp, #16]          // Restaurar x20 de main
    ldp x29, x30, [sp, #0]      // Restaurar FP, LR de draw_snoopy
    add sp, sp, #32             // Destruir stack frame
    ret

//COLOR GRIS:#7d787ccc

