dosseg
.model small
.stack 100h
.data
.code
main proc

mov ax, 7
mov bl, 4
mul bl
aam

mov ch,ah
mov cl,al


mov ah,2
mov dl,ch
add dl,48
int 21h
mov dl,cl
add dl,48
int 21h







mov ah,4ch
int 21h
main endp
end main