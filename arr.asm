; ____________ PROGRAM 1 __________________

; dosseg
; .model small
; .stack 100h
; .data
; arr db 'ABCDEFGHIJK$'
; .code


; main proc 

; mov ax,@data
; mov ds,ax



; mov dx, offset arr
; mov ah,9
; int 21h





; mov ah,4ch
; int 21h
; main endp
; end main


;  __________ PROGRAM 2 ________________




; dosseg
; .model small
; .stack 100h
; .data
; arr db 'M', 'A', 'B', 'T', 'O', 'O', 'R' , '$'
; .code 

; main proc

; mov ax, @data
; mov ds, ax


; mov dx, offset arr
; mov ah, 9
; int 21h

; mov ah,4ch
; int 21h


; main endp
; end main











; _________________ PROGRAM 3______________


dosseg
.model small
.stack 100h
.data
.code


main proc



mov ah, 4ch
int 21h
main endp
end main















































