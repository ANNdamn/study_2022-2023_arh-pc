%include 'in_out.asm'

SECTION .data
f db "Функция: f(x) = 5 * (2+x)", 0
msg db "Результат: ", 0

SECTION .text
global _start

_start:
mov eax, f
call sprintLF
pop ecx
pop edx
sub ecx,1
mov esi, 0 ; храним здесь сумму

next:
cmp ecx,0h 
jz _end
pop eax
call atoi
add eax, 2
mov edx, 5
mul edx
add esi, eax
loop next 

_end:
mov eax, msg 
call sprint
mov eax, esi
call iprintLF 
call quit
