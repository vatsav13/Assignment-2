     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		 
    MOV r1,#14
	MOV r2,#15
	MOV r3,#12
loop0	CMP r1,r2
	BCC loop1
	CMP r1,r3
	BCC loop3
	MOV r4,r1
	BGT loop0
loop1 CMP r2,r3
	BCC loop3
	MOV r4,r2
	BGT loop1
loop3 MOV r4,r3
	BGT loop3
stop B stop ; stop program
     ENDFUNC
     END