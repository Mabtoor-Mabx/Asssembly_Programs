dosseg 
.model small
.stack 300h
.data 
.code 

main proc

mov ah ,2 
mov dl , 'M'
int 21h
mov dl, 'A'
int 21h
mov dl , 'B'
int 21h
mov dl ,'T'
int 21h
mov dl, 'O'
int 21h
mov dl, 'O'
int 21h
mov dl, 'R'
int 21h
mov dl, ' '
int 21h
mov dl , 'M'
int 21h
mov dl, 'A'
int 21h
mov dl , 'B'
int 21h
mov dl ,'T'
int 21h
mov dl, 'O'
int 21h
mov dl, 'O'
int 21h
mov dl, 'R'
int 21h




mov ah, 4ch
int 21h


main endp
end main

