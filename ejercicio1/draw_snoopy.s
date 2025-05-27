	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32

.global coord_to_addr
coord_to_addr:
    // x0 es framebuffer base (pasado por draw_rectangle)
    // x1 es x
    // x2 es y
    mov x13, #640       // X13 = ancho de pantalla
    mul x14, x2, x13    // X14 = y * ancho de pantalla
    add x14, x14, x1    // X14 = (y * ancho de pantalla) + x
    lsl x14, x14, #2    // X14 = ((y * ancho de pantalla) + x) * 4
    add x12, x0, x14    // X12 = frame buffer + offset
    ret 

.global draw_rectangle
draw_rectangle:
    // x0: framebuffer base
    // x1: x
    // x2: y
    // x3: ancho
    // x4: alto
    // x5: color

    // crear stack frame (64 bytes para x20-x25, x29, x30)
    sub sp, sp, #64
    stp x29, x30, [sp, #0]      // Guardar FP, LR
    stp x20, x21, [sp, #16]     // Guardar x20 (del llamador), x21 (para x_start)
    stp x22, x23, [sp, #32]     // Guardar x22 (para y_start), x23 (para width)
    stp x24, x25, [sp, #48]     // Guardar x24 (para height), x25 (para color)

    mov x20, x0     // x20 local = framebuffer base
    mov x21, x1     // x inicio
    mov x22, x2     // y inicio
    mov x23, x3     // ancho
    mov x24, x4     // alto
    mov x25, x5     // color

    mov x26, #0     // dy = 0
.rect_y_loop:
    cmp x26, x24
    b.ge .end_rect

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

.end_rect:
    // restaurar registros y destruir stack frame
    ldp x24, x25, [sp, #48]
    ldp x22, x23, [sp, #32]
    ldp x20, x21, [sp, #16]
    ldp x29, x30, [sp, #0]
    add sp, sp, #64  
    ret

.global draw_snoopy
draw_snoopy:

// BASE CASA ROJA
    // creo stack frame y guardo registros
    sub sp, sp, #32             
    stp x29, x30, [sp, #0]      // Guardar FP, LR de draw_snoopy
    str x20, [sp, #16]          // Guardar x20 de main (el fb base original)

  // casa 
    mov x1, #230    // x
    mov x2, #360    // y
    mov x3, #180     // ancho
    mov x4, #60       // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0x0000, lsl 0  // rojo
    bl draw_rectangle

  // techo
    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #200    // x
    mov x2, #340    // y
    mov x3, #240     // ancho
    mov x4, #20       // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle

    ldr x0, [sp, #16]  
    mov x1, #210    // x
    mov x2, #320    // y
    mov x3, #220     // ancho
    mov x4, #20       // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0x0000, lsl 0  
    bl draw_rectangle

    ldr x0, [sp, #16]   // restaurar framebuffer base  
    mov x1, #220    // x
    mov x2, #300    // y
    mov x3, #200     // ancho
    mov x4, #20       // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0x0000, lsl 0
    bl draw_rectangle

    ldr x0, [sp, #16]  
    mov x1, #230    // x
    mov x2, #280    // y
    mov x3, #180     // ancho
    mov x4, #20       // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle

    ldr x0, [sp, #16]
    mov x1, #240    // x
    mov x2, #260    // y
    mov x3, #160     // ancho
    mov x4, #20       // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0x0000, lsl 0
    bl draw_rectangle

// BORDE CASA
  // horizontales
    ldr x0, [sp, #16] 
    mov x1, #240    // x
    mov x2, #260    // y
    mov x3, #160     // ancho
    mov x4, #5       // alto
    movz x5, 0x008B, lsl 16
    movk x5, 0x0000, lsl 0 

    bl draw_rectangle
    ldr x0, [sp, #16]  
    mov x1, #230    // x
    mov x2, #280    // y
    mov x3, #180     // ancho
    mov x4, #5       // alto
    movz x5, 0x008B, lsl 16 //marron
    movk x5, 0x0000, lsl 0
    bl draw_rectangle   

    ldr x0, [sp, #16] 
    mov x1, #220    // x
    mov x2, #300    // y
    mov x3, #200     // ancho
    mov x4, #5       // alto
    movz x5, 0x008B, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle  

    ldr x0, [sp, #16] 
    mov x1, #210    // x
    mov x2, #320    // y
    mov x3, #220     // ancho
    mov x4, #5       // alto
    movz x5, 0x008B, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle  

    ldr x0, [sp, #16]  
    mov x1, #200    // x
    mov x2, #340    // y
    mov x3, #240     // ancho
    mov x4, #5       // alto
    movz x5, 0x008B, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle 

    ldr x0, [sp, #16]  
    mov x1, #200    // x
    mov x2, #360    // y
    mov x3, #240     // ancho
    mov x4, #5       // alto
    movz x5, 0x008B, lsl 16
    movk x5, 0x0000, lsl 0
    bl draw_rectangle 


  // verticales
    ldr x0, [sp, #16] 
    mov x1, #236    // x
    mov x2, #265    // y
    mov x3, #5     // ancho
    mov x4, #20      // alto
    movz x5, 0x008B, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle

    ldr x0, [sp, #16] 
    mov x1, #400    // x
    mov x2, #265    // y
    mov x3, #5     // ancho
    mov x4, #20      // alto
    movz x5, 0x008B, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle


    ldr x0, [sp, #16] 
    mov x1, #226    // x
    mov x2, #285    // y
    mov x3, #5     // ancho
    mov x4, #20      // alto
    movz x5, 0x008B, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle

    ldr x0, [sp, #16] 
    mov x1, #410    // x
    mov x2, #285    // y
    mov x3, #5     // ancho
    mov x4, #20      // alto
    movz x5, 0x008B, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle

    ldr x0, [sp, #16] 
    mov x1, #215    // x
    mov x2, #305    // y
    mov x3, #5     // ancho
    mov x4, #20      // alto
    movz x5, 0x008B, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle

    ldr x0, [sp, #16] 
    mov x1, #420    // x
    mov x2, #305    // y
    mov x3, #5     // ancho
    mov x4, #20      // alto
    movz x5, 0x008B, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle

    ldr x0, [sp, #16] 
    mov x1, #205    // x
    mov x2, #325    // y
    mov x3, #5     // ancho
    mov x4, #20      // alto
    movz x5, 0x008B, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle

    ldr x0, [sp, #16] 
    mov x1, #430    // x
    mov x2, #325    // y
    mov x3, #5     // ancho
    mov x4, #20      // alto
    movz x5, 0x008B, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle
    
    ldr x0, [sp, #16] 
    mov x1, #195    // x
    mov x2, #345    // y
    mov x3, #5     // ancho
    mov x4, #20      // alto
    movz x5, 0x008B, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle

    ldr x0, [sp, #16] 
    mov x1, #440    // x
    mov x2, #345    // y
    mov x3, #5     // ancho
    mov x4, #20      // alto
    movz x5, 0x008B, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle

    ldr x0, [sp, #16] 
    mov x1, #225    // x
    mov x2, #360    // y
    mov x3, #5     // ancho
    mov x4, #60      // alto
    movz x5, 0x008B, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle

    ldr x0, [sp, #16] 
    mov x1, #410    // x
    mov x2, #360    // y
    mov x3, #5     // ancho
    mov x4, #60      // alto
    movz x5, 0x008B, lsl 16
    movk x5, 0x0000, lsl 0 
    bl draw_rectangle

// SOMBRA TECHO
    ldr x0, [sp, #16]  
    mov x1, #230    // x
    mov x2, #365    // y
    mov x3, #180     // ancho
    mov x4, #6       // alto
    movz x5, 0x00AF, lsl 16
    movk x5, 0x0000, lsl 0
    bl draw_rectangle 

// SNOOPY 
  // 1.
    ldr x0, [sp, #16]  
    mov x1, #250    // x
    mov x2, #225    // y
    mov x3, #110     // ancho
    mov x4, #35       // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0xFFFF, lsl 0
    bl draw_rectangle 
  
  // 2.
    ldr x0, [sp, #16]  
    mov x1, #360    // x
    mov x2, #245    // y
    mov x3, #35     // ancho
    mov x4, #15       // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0xFFFF, lsl 0
    bl draw_rectangle

  // 3.
    ldr x0, [sp, #16]  
    mov x1, #380    // x
    mov x2, #225    // y
    mov x3, #15     // ancho
    mov x4, #20       // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0xFFFF, lsl 0
    bl draw_rectangle 

  // 4.
    ldr x0, [sp, #16]  
    mov x1, #260    // x
    mov x2, #185    // y
    mov x3, #30     // ancho
    mov x4, #40       // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0xFFFF, lsl 0
    bl draw_rectangle 

  // 5.
    ldr x0, [sp, #16]  
    mov x1, #310    // x
    mov x2, #215    // y
    mov x3, #50     // ancho
    mov x4, #10       // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0xFFFF, lsl 0
    bl draw_rectangle 

  // 5.
    ldr x0, [sp, #16]  
    mov x1, #310    // x
    mov x2, #260    // y
    mov x3, #35     // ancho
    mov x4, #10       // alto
    movz x5, 0xFFFF, lsl 16
    movk x5, 0xFFFF, lsl 0
    bl draw_rectangle

//FIN
    ldr x20, [sp, #16]          // Restaurar x20 de main
    ldp x29, x30, [sp, #0]      // Restaurar FP, LR de draw_snoopy
    add sp, sp, #32             // Destruir stack frame
    ret

