; _____THIS IS OUR PREPROCESSOR DIRECTIVES____
dosseg 
.model small
.stack 100h
.data 
.code 

;______ MAIN FUNCTION ______
main proc

; ______CODE STARTS HERE ______
mov ah , 2
mov dl, 'H'
int 21h
mov dl,'E'
int 21h
mov dl,'L'
int 21h
mov dl, 'L'
int 21h
mov dl, 'O'
int 21h
;______ LINES USED TO END THE CODE ______
mov ah, 4ch
int 21h
; ______END THE MAIN FUNCTION______
main endp
;______END THE PROGRAM______
end main