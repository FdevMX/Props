.MODEL SMALL
.STACK 100H
.DATA
MENSAJE1 DB '1. Calcular factorial de un numero',0AH,0DH,'$'
MENSAJE2 DB '2. Serie de Fibonacci',0AH,0DH,'$'
MENSAJE3 DB '3. Salir',0AH,0DH,'$'
MENSAJE4 DB 'Ingrese la opcion: $'
NUMERO DB ?
RESDB 10 DUP(?)
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    ; Mostrar menu
    CALL MOSTRARMENU
    ; Leer opcion
    CALL LEER
    CMP AL,'1'
    JE FACTORIAL
    CMP AL,'2'
    JE FIBONACCI
    CMP AL,'3'
    JE SALIR
    JMP MAIN
FACTORIAL:
    ; Llamar macro para calcular factorial
    CALCFACTORIAL MACRO
    ENDM
    RET
FIBONACCI:
    ; Llamar macro para calcular fibonacci
    CALCFIBONACCI MACRO
    ENDM
    RET
SALIR:
    MOV AH,4CH
    INT 21H
MAIN ENDP
; Macros
CALCUFACTORIAL MACRO
    ; Código para calcular factorial
    ENDM
CALCUFIBONACCI MACRO
    ; Código para calcular serie de Fibonacci
    ENDM
MOSTRARMENU PROC
    MOV AH,09H
    LEA DX,MENSAJE1
    INT 21H
    MOV AH,09H
    LEA DX,MENSAJE2
    INT 21H
    MOV AH,09H
    LEA DX,MENSAJE3
    INT 21H
    MOV AH,09H
    LEA DX,MENSAJE4
    INT 21H
    RET
MOSTRARMENU ENDP
LEER PROC
    MOV AH,01H
    INT 21H
    SUB AL,48
    RET
LEER ENDP
END MAIN
