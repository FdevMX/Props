; Declaramos las variables
.data
    numero db 0
    factorial dw 1

; Leer el número por teclado
.code
    mov ah, 01h
    int 21h
    mov numero, al

; Calcular el factorial
    mov cx, numero
    mov ax, 1
    L1:
        mul factorial
        loop L1

; Imprimir el factorial
    mov ah, 02h
    mov dl, factorial
    int 21h

; Salir
    mov ah, 4ch
    int 21h
