dosseg
.model small
.stack 100h
.data
str1 db 'Enter The String Length $'
str2 db 'Enter The Word: $'
str3 db 'Your Word is : $'
arr db 10 dup ('$')
.code

main proc


mov ax, @data
mov ds,ax

; STR1

mov dx, offset str1
mov ah, 9
int 21h

; Line Break

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h



; First Input
mov ah, 1
int 21h
sub al, 48
mov cl,al

; Line Break

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h


; STR2

mov dx, offset str2
mov ah,9
int 21h

; Line Break

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h


; Second Input

mov ah,1
lea si, arr
start :
int 21h
mov [si], al
inc si

loop start


; Line Break

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

; STR3

mov dx, offset str3
mov ah,9
int 21h

; Line Break
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h


; Output


mov dx, offset  arr
mov ah,9
int 21h

mov ah,4ch
int 21h
main endp
end main