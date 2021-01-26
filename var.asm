
; ;  Program No 1
; dosseg
; .model small
; .stack 100h
; .data
; var db 'X'
; .code


; main  proc

; mov ax,@data
; mov ds,ax


; mov dl,var
; mov ah,2
; int 21h

; mov ah,4ch
; int 21h
; main endp
; end main


; Program No 2


dosseg
.model small
.stack 100h
.data
var dw 'IK'
.code


main proc

mov ax,@data
mov ds,ax


mov bx, var
mov ah,2
mov dl,bh
int 21h
mov dl,bl
int 21h




mov ah,4ch
int 21h
main endp
end main






