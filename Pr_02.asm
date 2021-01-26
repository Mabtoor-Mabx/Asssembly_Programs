; dosseg
; .model small
; .stack 500h
; .data
; .code 

; main proc
; mov ah,2
; mov dl,'M'
; int 21h
; mov dl,'A'
; int 21h
; mov dl,'B'
; int 21h
; mov dl,'T'
; int 21h
; mov dl,'O'
; int 21h
; mov dl,'O'
; int 21h
; mov dl,'R'
; int 21h
; mov dl, ' '
; int 21h
; mov dl,'M'
; int 21h
; mov dl,'A'
; int 21h
; mov dl,'B'
; int 21h
; mov dl,'X'
; int 21h

; mov ah, 4ch
; int 21h
; main endp
; end main

; dosseg
; .model small
; .stack 100h
; .data 
; .code


; main proc



; mov ah, 1
; int 21h





; mov dl,al
; mov ah,2
; int 21h



; mov ah,4ch
; int 21h
; main endp
; end main





; dosseg
; .model small
; .stack 100h
; .data
; .code


; main proc


; mov ah, 1
; int 21h
; mov bl,al

; mov ah, 2
; mov dl, 10
; int 21h
; mov dl, 13
; int 21h


; mov ah, 1
; int 21h
; mov cl,al
; mov ah,2
; mov dl,10
; int 21h
; mov dl,13
; int 21h


; add bl,cl
; sub bl,48
; mov dl,bl


; mov ah,2
; int 21h




; mov ah,4ch
; int 21h
; main endp
; end main







; dosseg
; .model small
; .stack 100h
; .data
; .code


; main proc

; mov ah, 1
; int 21h
; mov bl,al

; mov ah,2
; mov dl,10
; int 21h
; mov dl, 13
; int 21h




; mov ah, 1
; int 21h
; mov cl,al

; mov ah, 2
; mov dl, 10
; int 21h
; mov dl,13
; int 21h


; sub bl,cl
; add bl,48
; mov dl,bl


; mov ah, 2
; int 21h




; mov ah,4ch
; int 21h
; main endp
; end main




dosseg
.model small
.stack 100h
.data
.code

main proc

mov ah, 2
mov dl, 49
mov cl,9

start:

int 21h
inc dl

mov bl,dl
mov dl, 10
int 21h
mov dl, 13
int 21h
mov dl,bl



loop start

mov ah,4ch
int 21h
main endp
end main

































