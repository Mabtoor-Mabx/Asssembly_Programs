dosseg
.model small
.stack 100h
.data
.code
main proc

mov ah,2
mov dl,58
mov cl,32


start:
int 21h
call linebr ; CALL SHOW WE CALLING THAT FUNCTION
inc dl
loop start

mov ah,4ch
int 21h
main endp

; LINEBREAK CUSTOM FUNCTION

linebr proc ; PROC SHOW STARTING OF FUNCTION
push ax
push dx 
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h
pop dx
pop ax
ret ; RET IS RETURN  . WE USED IN FUNCTION
linebr endp ; ENDP SHOW ENDING OF FUNCTION




end main