     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
    MOV r1,#28
	MOV r2,#21
loop	CMP r1,r2
	SUBGT r1,r1,r2
	MOV r3,r1
	SUBLT r2,r2,r1
	MOV r3,r1
	BNE loop
stop B stop ; stop program
     ENDFUNC
     END