dosseg 
.model small
.stack 300h
.data 
.code 

main proc


mov ah, 1
int 21h
mov bl,al


; Line BREAK

mov ah, 2
mov dl,10
int 21h
mov dl, 13
int 21h



mov ah, 1
int 21h
mov cl,al


; Line Break
mov ah, 2
mov dl,10
int 21h
mov dl, 13
int 21h


add bl,cl
sub bl, 48
mov dl,bl

mov ah, 2
int 21h






mov ah, 4ch
int 21h


main endp
end main
