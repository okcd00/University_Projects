DATA SEGMENT
STRING DB 'The date is FEB&03'
DATA ENDS
CODE SEGMENT
MAIN PROC FAR
ASSUME CS:CODE,DS:DATA
START:
	MOV CX,18 
	MOV AL,'&' 
	CLD 
	MOV DI,SEG STRING 
	MOV ES,DI 
	LEA DI,STRING 
	REPNE SCASB 
	JNE NEXT
	DEC DI
	MOV ES: BYTE PTR [DI],' '; Wrong at Chinese / English <'>
NEXT:
	RET
	MAIN ENDP
	CODE ENDS
END START ;End of file 