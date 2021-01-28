; dosseg
; .model small
; .stack 100h
; .data
; .code

; main proc



; mov ah,2
; mov dl,'H'
; int 21h
; mov dl,'E'
; int 21h
; mov dl,'L'
; int 21h
; mov dl,'L'
; int 21h
; mov dl,'O'
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

; mov ah,1
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

; mov ah,2
; mov dl,48
; mov cl,9


; start :
; int 21h
; inc dl

; mov bl,dl
; mov dl,10
; int 21h
; mov dl,13
; int 21h
; mov dl,bl


; loop start 


; mov ah,4ch
; int 21h
; main endp
; end main

; dosseg
; .model small
; .stack 100h
; .data
; str1 db 'Enter The First Value : $ '
; str2 db 'Enter The Second Value :$'
; str3 db 'The Addition Of These Two Values Is : $'


; .code

; main proc

; mov ax,@data
; mov ds,ax


; mov dx, offset str1
; mov ah,9
; int 21h

; mov ah, 1
; int 21h
; mov bl,al


; mov ah,2
; mov dl,10
; int 21h
; mov dl,13
; int 21h

; mov dx, offset str2
; mov ah,9
; int 21h


; mov ah,1
; int 21h
; mov cl,al


; mov ah,2
; mov dl,10
; int 21h
; mov dl, 13
; int 21h


; mov dx, offset str3
; mov ah,9
; int 21h


; add bl,cl
; sub bl,48
; mov dl,bl




; mov ah,2
; int 21h




; mov ah, 4ch
; int 21h
; main endp
; end main


; dosseg
; .model small
; .stack 100h
; .data
; str1 db 'Enter The First Value : $'
; str2 db 'Enter The Second Value : $'
; str3 db 'The Subtraction Of Two Values Is : $'
; .code
; main proc

; mov ax,@data
; mov ds,ax

; mov dx , offset str1
; mov ah,9
; int 21h

; mov ah,1
; int 21h
; mov bl,al



; mov ah,2
; mov dl,10
; int 21h
; mov dl,13
; int 21h


; mov dx ,offset str2
; mov ah,9
; int 21h

; mov ah,1
; int 21h
; mov cl,al


; mov ah,2
; mov dl,10
; int 21h
; mov dl,13
; int 21h


; mov dx ,offset str3
; mov ah,9
; int 21h

; sub bl,cl
; add bl,48
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
; var db 'H'
; .code

; main proc

; mov ax, @data
; mov ds,ax


; mov dl, var
; mov ah, 2
; int 21h



; mov ah,4ch
; int 21h
; main endp
; end main


; dosseg
; .model small
; .stack 100h
; .data
; var dw 'HI'
; .code
; main proc

; mov ax,@data
; mov ds,ax


; mov bx, var
; mov ah,2
; mov dl, bh
; int 21h
; mov dl,bl
; int 21h


; mov ah,4ch
; int 21h
; main endp
; end main


; dosseg
; .model small
; .stack 100h
; .data
; arr db 'M', 'A', 'B', 'T', 'O', 'O', 'R', '$'
; .code

; main proc

; mov ax,@data
; mov ds,ax

; mov dx, offset arr
; mov ah,9
; int 21h

; main endp
; end main


; dosseg
; .model small
; .stack 100h
; .data
; arr db 'Mabtoor Mabx $'
; .code

; main proc

; mov ax, @data
; mov ds,ax


; mov dx, offset arr
; mov ah,9
; int 21h



; mov ah,4ch
; int 21h
; main endp
; end main

; dosseg
; .model small
; .stack 100h
; .data
; str1 db 'Enter The String Length : $'
; str2 db 'Enter The Word : $'
; str3 db 'Your Word is :'
; arr db  10 dup ('$')
; .code

; main proc

; mov ax,@data
; mov ds,ax


; mov dx,offset str1
; mov ah,9
; int 21h

; mov ah,1
; int 21h
; sub al,48
; mov cl,al


; mov ah,2
; mov dl,10
; int 21h
; mov dl,13
; int 21h


; mov dx,offset str2
; mov ah,9
; int 21h


; mov ah, 1
; lea si, arr
; start :
; int 21h
; mov [si], al
; inc si
; loop start


; mov ah,2
; mov dl,10
; int 21h
; mov dl,13
; int 21h



; mov dx, offset str3
; mov ah,9
; int 21h








; mov ah,4ch
; int 21h
; main endp
; end main


dosseg
.model small
.stack 100h
.data
str1 db 'Enter The Word : $'
str2 db 'The Word In Reverse Order is : $'
.code


main proc

mov ax,@data
mov ds,ax


mov dx, offset str1
mov ah,9
int 21h


mov cl,4
start1 :
mov ah,1
int 21h
mov ah,0
push ax
loop start1


mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h



mov dx,offset str2
mov ah,9
int 21h


mov cl,4
start2 :
pop dx
mov ah,2
int 21h

loop start2








mov ah,4ch
int 21h

main endp
end main



















































































































































