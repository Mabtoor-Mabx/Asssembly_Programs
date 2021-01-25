dosseg
.model small
.stack 100h
.data
.code


main proc

mov ah, 2
mov  dl, 49
mov cl, 9

start:

int 21h
inc dl 

mov bl, dl

mov dl , 10
int 21h
mov dl , 13
int 21h
mov dl, bl

loop start






mov ah,4ch
int 21h
main endp
end main
