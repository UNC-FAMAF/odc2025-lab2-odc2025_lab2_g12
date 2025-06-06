	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32 
 
.extern draw_circle 
.global moon 
moon:
 // creo stack frame y guardo registros
   sub sp, sp, #32             
   stp x29, x30, [sp, #0]      // Guardar FP, LR de draw_snoopy
   str x20, [sp, #16]          // Guardar x20 de main (el fb base original)
    
   mov x1, #610      // centro x
   mov x2, #15      // centro y
   mov x3, #100       // radio
   movz x4, 0xE8E8, lsl 16
   movk x4, 0xE8FF, lsl 0 // blanco #e8e8e8FF
   bl draw_circle

   mov x1, #590      // centro x
   mov x2, #80      // centro y
   mov x3, #20       // radio
   movz x4, 0xA9A6, lsl 16
   movk x4, 0xA7FF, lsl 0 // gris #A9A6A7CC
   bl draw_circle

   mov x1, #550      // centro x
   mov x2, #60      // centro y
   mov x3, #10       // radio
   movz x4, 0xA9A6, lsl 16
   movk x4, 0xA7FF, lsl 0 // gris #A9A6A7CC
   bl draw_circle

   mov x1, #635      // centro x
   mov x2, #25      // centro y
   mov x3, #15       // radio
   movz x4, 0xA9A6, lsl 16
   movk x4, 0xA7FF, lsl 0 // gris #A9A6A7CC
   bl draw_circle

   ldr x20, [sp, #16]          // Restaurar x20 de main
   ldp x29, x30, [sp, #0]      // Restaurar FP, LR de draw_snoopy
   add sp, sp, #32             // Destruir stack frame
   ret
