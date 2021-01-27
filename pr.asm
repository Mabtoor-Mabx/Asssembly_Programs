; dosseg
; .model small
; .stack 100h
; .data
; .code

; main proc

; mov ah, 2
; mov dl , 'M'
; int 21h
; mov dl, 'A'
; int 21h
; mov dl, 'B'
; int 21h
; mov dl , 'T'
; int 21h
; mov dl, 'O'
; int 21h
; mov dl, 'O'
; int 21h
; mov dl, 'R'
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






; mov dl, al

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
; .code

; main proc

; mov ah, 2
; mov dl, 48
; mov cl, 9


; start :
; int 21h
; inc  dl

; mov bl,dl
; mov dl, 10
; int 21h
; mov dl, 13
; int 21h
; mov dl, bl



; loop start





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

; mov ah,1
; int 21h
; mov bl, al

; mov ah, 2
; mov dl, 10
; int 21h
; mov dl,13
; int 21h


; mov ah, 1
; int 21h
; mov cl,al

; mov ah, 2
; mov dl , 10
; int 21h
; mov dl,13
; int 21h

; add bl, cl
; sub bl , 48


; mov dl, bl
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
; var db 'H'
; .code

; main proc

; mov ax, @data
; mov ds,ax


; mov dl, var
; mov ah, 2
; int 21h






; mov ah, 4ch
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

; mov ax, @data
; mov ds, ax


; mov bx, var
; mov ah, 2
; mov dl,bh
; int 21h
; mov dl,bl
; int 21h




; dosseg
; .model small
; .stack 100h
; .data
; arr db 'M', 'A', 'B', 'T', 'O', 'O','R','$'
; .code
; main proc

; mov ax, @data
; mov ds, ax

; mov dx, offset arr
; mov ah, 9
; int 21h



; mov ah, 4ch
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
; mov ah, 9
; int 21h




; mov ah, 4ch
; int 21h
; main endp
; end main

dosseg
.model small
.stack 100h
.data
str1 db 'Length Of String $'
str2 db 'Enter The Word $'
str3 db 'Your Word is $'
arr db 10 dup ('$')
.code

main proc

mov ax, @data
mov ds, ax

; LENTH OF STRING LINE
mov dx, offset str1
mov ah, 9
int 21h
; LINE BREAK
mov ah, 2
mov dl, 10
int 21h
mov dl,13
int 21h



; STRING LENTH INPUT
mov ah, 1
int 21h
sub al, 48
mov cl, al


; LINE BREAK
mov ah,2
mov dl, 10
int 21h
mov dl,13
int 21h



; ENTER THE WORD TEXT
mov dx, offset str2
mov ah, 9
int 21h

; LINE BREAK
mov ah, 2
mov dl, 10
int 21h
mov dl,13
int 21h



; WORD INPUT
mov ah, 1
lea si , arr
start :
int 21h
mov [si], al
inc si
loop start

; LINE BREAK
mov ah, 2
mov dl, 10
int 21h
mov dl,13
int 21h


; THE ANSWER IS TEXT

mov dx, offset str3
mov ah,9
int 21h

; LINE BREAK
mov ah, 2
mov dl, 10
int 21h
mov dl,13
int 21h


; ANSWER
mov dx, offset arr
mov ah, 9
int 21h







mov ah, 4ch
int 21h
main endp
end main




































mov ah, 4ch
int 21h
main endp
end main



















































































