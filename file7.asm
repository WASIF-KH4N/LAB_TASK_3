;Program to define 3 types of variables,use of enter key,input the value and add them.

Dosseg
.model small
.stack 100h
.data
variable_1 db ?
variable_2 db '5'
variable_3 db 'Wasif$'

.code
main proc
mov ax,@data
mov ds,ax
lea dx,variable_3    ;lea==>Load Effective Address
mov ah,9
int 21h
mov dx,10
mov ah,2
int 21h
mov dx,13
mov ah,2
int 21h
mov ah,1
int 21h
mov variable_1,al
mov dx,43
mov ah,2
int 21h
mov bl,variable_2
mov dl,bl
mov ah,2
int 21h
mov dx,61
mov ah,2
int 21h
mov cl,variable_1
add bl,cl
mov dl,bl
sub dl,48
mov ah,2
int 21h

mov ah,4ch ;for exit the program
int 21h
main endp
end main






