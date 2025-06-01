
.global funcion_delay
funcion_delay:
	// 	Parametros:
    // 	x8 -> Duración DELAY.

	// Guardamos los valores previos en el stack
	SUB SP, SP, 8 										
	STUR x9,  [SP, 0]

	mov x9, x8  							// Inicializo x9 con x8.
	delay:
		sub x9, x9, 1
		cbnz x9, delay
	// Devolvemos los valores previos del stack
	LDR x9, [SP, 0]					 			
	ADD SP, SP, 8
    
    ret
