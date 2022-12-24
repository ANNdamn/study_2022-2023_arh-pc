%include 'in_out.asm'
SECTION .data
filename db 'name.txt', 0h
msg db 'Как Вас зовут? ', 0h 
msg2 db 'Меня зовут ', 0h

SECTION .bss
contents resb 255 ; переменная для вводимой строки
SECTION .text
global _start
_start:

mov eax,msg
call sprint
mov ecx, contents
mov edx, 255
call sread
; --- Создание файла (sys_create)
mov ecx, 0777o 
mov ebx, filename
mov eax, 8 
int 80h
; --- Открытие существующего файла (sys_open)
mov ecx, 2
mov ebx, filename
mov eax, 5
int 80h
; --- Запись дескриптора файла в esi
mov esi, eax
; --- Расчет длины введенной строки
mov eax, msg2
call slen
; --- Записываем в файл (sys_write)
mov edx, eax
mov ecx, msg2
mov ebx, esi
mov eax, 4
int 80h
; --- Записываем в файл (sys_lseek)
mov ecx, 1 ; Открытие файла (1 - для записи).
mov ebx, filename
mov eax, 5
int 80h
mov edx, 2 ; смещение
mov ecx, 0 ; смещение на 0 байт
mov ebx, eax ; дескриптор файла
mov eax, 19 ; номер системного вызова sys_lseek
int 80h ; вызов ядра
mov edx, 9 ; Запись в конец файла
mov ecx, contents ; строки из переменной msg
mov eax, 4
int 80h
; --- Закрываем файл (sys_close)
mov ebx, esi
mov eax, 6
int 80h
call quit
