     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
    MOV r1,#14
	MOV r2,#2
	udiv r3,r1,r2
	mls r4,r3,r2,r1
	cmp r4,#0
	ITE GT
	MOVGT r4,#13
	MOVLE r4,#14
stop B stop ; stop program
     ENDFUNC
     END