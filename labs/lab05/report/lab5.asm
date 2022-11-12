; hello.asm
SECTION .data ; Начало секции данных
    hello: DB 'Dikach Anna',10 ;  'Dikach Anna' плюс
    ;символ перевода строки
    helloLen: EQU $-hello ; Длина строки hello

SECTION .text ; Начало секции кода
    GLOBAL _start

_start: ; Точка входа в программу
    mov eax,4 ; Сиситемный вывод для записи
    mov ebx,1 ; Описатель файла 'l' - стандартный вывод
    mov ecx,hello ; Адрес строки hello в ecx
    mov edx,helloLen ;  Размер строки hello
    int 80h ; Вызов ядра
    
    mov eax,1 ; Системный вызов для входа
    mov ebx,0 ; Выход с кодом возврата '0' (без ошибок)
    int 80h ; Вызов ядра
